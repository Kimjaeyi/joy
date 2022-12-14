package com.novetn.infra.modules.chat;

public class Chat {
	
	private Integer chatSeq;
	private Integer chatDelNY;
	private Integer cuMember;
	private String chatCreateDate;
	
	//채팅 맴버 정보 추출을 위한 필드
	//아래 필드도 본인의 DB테이블에 맞게 변경해주세요
	private Integer seq;       //유저 시퀀스
	private String id;   //유저 이름 or 닉네임
	private String path;       //프로필 이미지 경로
	private String uuidName;   //프로필 이미지 파일 이름
	
	public Integer getChatSeq() {
		return chatSeq;
	}
	public void setChatSeq(Integer chatSeq) {
		this.chatSeq = chatSeq;
	}
	public Integer getChatDelNY() {
		return chatDelNY;
	}
	public void setChatDelNY(Integer chatDelNY) {
		this.chatDelNY = chatDelNY;
	}
	public Integer getCuMember() {
		return cuMember;
	}
	public void setCuMember(Integer cuMember) {
		this.cuMember = cuMember;
	}
	public String getChatCreateDate() {
		return chatCreateDate;
	}
	public void setChatCreateDate(String chatCreateDate) {
		this.chatCreateDate = chatCreateDate;
	}
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	public String getId() { 
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getUuidName() {
		return uuidName;
	}
	public void setuuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	
	
	
}
