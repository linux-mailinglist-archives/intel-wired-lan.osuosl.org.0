Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDkcMHGLsWnkDAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 16:34:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBF02669F7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 16:34:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B6E7584687;
	Wed, 11 Mar 2026 15:34:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GF_47iSfBftp; Wed, 11 Mar 2026 15:33:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7286C84681
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773243239;
	bh=K8MJFjvgxoN2vFb0y2A8WHuorv2Iwnc6DzqS4N4JARw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Rt2iIcO/fXxh2S0kfxwytbIvVZMbg3mzT1mSuHYzaR1iTeAQp6CObRHkF13nT6e2r
	 a/hE2+o3yvI/yNr1gwqxdnCFx27g2EaQmy1WkHzQGysJY4i3p4+5Ri1W3J89c36Vm1
	 /icEQ+zveWDrm4RqcaZO3UDea8S3XGJnh4ifL7IEoePh0C0O7UY1dtkQSHoXesIfJx
	 Iy3bW0MJx+hsxf7YL3oqwkocw++6Gj1Niu7yxSXlRvESe18N9VmsZ8tG4lAX1BjzQI
	 8UCJIml5LjnoJt9ngdpHB77F4T1v1YTdN6ko8wXJjO2cEYNsSuZRHuOTyMMJPPdSEn
	 6oQFQ9CFfe5hQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7286C84681;
	Wed, 11 Mar 2026 15:33:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4DFC5201
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 08:22:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3206C615E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 08:22:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8nM0yk9CPGNp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2026 08:22:40 +0000 (UTC)
X-Greylist: delayed 399 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 11 Mar 2026 08:22:39 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4F7D96103C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F7D96103C
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=220.197.31.4;
 helo=m16.mail.163.com; envelope-from=luckd0g@163.com; receiver=<UNKNOWN> 
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.4])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4F7D96103C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 08:22:38 +0000 (UTC)
Received: from luckd0g$163.com ( [183.205.138.18] ) by
 ajax-webmail-wmsvr-40-127 (Coremail) ; Wed, 11 Mar 2026 16:15:25 +0800
 (CST)
X-Originating-IP: [183.205.138.18]
Date: Wed, 11 Mar 2026 16:15:25 +0800 (CST)
From: "Jianzhou Zhao" <luckd0g@163.com>
To: kuba@kernel.org, davem@davemloft.net, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch,
 edumazet@google.com, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20251222(83accb85) Copyright (c) 2002-2026 www.mailtech.cn 163com
X-NTES-SC: AL_Qu2cAf6auUEp4yiZbOkfmU4Rhug7UMO3uf8n24JfPJ9wjA/p2yseUUF9NmPf88CwFTuXvxiGfTNO1/ZAU5Bifrwxk3hmxm5gz3tIpjQH1wzxxw==
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=GBK
MIME-Version: 1.0
Message-ID: <43b9914b.706c.19cdbf70885.Coremail.luckd0g@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: fygvCgDX75qdJLFpZch2AA--.39436W
X-CM-SenderInfo: poxfyvkqj6il2tof0z/xtbC9h32gWmxJJ0zLQAA3j
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Mailman-Approved-At: Wed, 11 Mar 2026 15:33:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=163.com; 
 s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
 Message-ID; bh=K8MJFjvgxoN2vFb0y2A8WHuorv2Iwnc6DzqS4N4JARw=; b=Y
 KDV2WnmZGwkKijMX9ddQwkQMNlDbXCL8lSjV8aI7zYu6WdOj1I/2iLU2Cjh+Fc4A
 ua1kb6wFlGCIDYHzK5DrX7jZ/NmvbT95irCGFWeOUFnx5ndvFlR23MT0DpRQK3W6
 GGaDK5yI6NHCV/N90P/yDUvbup7vL+oud8iKJ36HYo=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=163.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=163.com header.i=@163.com header.a=rsa-sha256
 header.s=s110527 header.b=YKDV2Wnm
Subject: [Intel-wired-lan] KCSAN: data-race in e1000_clean / e1000_xmit_frame
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [2.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[163.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FREEMAIL_FROM(0.00)[163.com];
	FORGED_SENDER(0.00)[luckd0g@163.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:davem@davemloft.net,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	HAS_XOIP(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luckd0g@163.com,intel-wired-lan-bounces@osuosl.org];
	HAS_X_PRIO_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 7BBF02669F7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

CgpTdWJqZWN0OiBbQlVHXSBlMTAwMDogS0NTQU46IGRhdGEtcmFjZSBpbiBlMTAwMF9jbGVhbl90
eF9pcnEgLyBlMTAwMF90c28KCkRlYXIgTWFpbnRhaW5lcnMsCgpXZSBhcmUgd3JpdGluZyB0byBy
ZXBvcnQgYSBLQ1NBTi1kZXRlY3RlZCBkYXRhIHJhY2UgdnVsbmVyYWJpbGl0eSB3aXRoaW4gdGhl
IGBlMTAwMGAgbmV0d29yayBkcml2ZXIuIFRoaXMgYnVnIHdhcyBmb3VuZCBieSBvdXIgY3VzdG9t
IGZ1enppbmcgdG9vbCwgUmFjZVBpbG90LiBUaGUgcmFjZSBvY2N1cnMgd2hlbiBgZTEwMDBfdHNv
KClgIHdyaXRlcyBhIG5ldyBgbmV4dF90b193YXRjaGAgdHJhY2tpbmcgYXJyYXkgaW5kZXggZm9y
IGEgdHJhbnNtaXNzaW9uIGJ1ZmZlciB3aXRob3V0IHZvbGF0aWxlIGxvY2tpbmcsIHdoaWxlIHRo
ZSBgZTEwMDBfY2xlYW5fdHhfaXJxKClgIHN1YnJvdXRpbmUgbG9ja2xlc3NseSBldmFsdWF0ZXMg
dGhpcyBmaWVsZCBjb25jdXJyZW50bHkuIFdlIG9ic2VydmVkIHRoaXMgYnVnIG9uIHRoZSBMaW51
eCBrZXJuZWwgdmVyc2lvbiA2LjE4LjAtMDg2OTEtZzIwNjFmMThhZDc2ZS1kaXJ0eS4KCkNhbGwg
VHJhY2UgJiBDb250ZXh0Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PQpCVUc6IEtDU0FOOiBkYXRhLXJhY2UgaW4gZTEwMDBf
Y2xlYW4gLyBlMTAwMF94bWl0X2ZyYW1lCgp3cml0ZSB0byAweGZmZmZjOTAwMDQxNGU0OTIgb2Yg
MiBieXRlcyBieSB0YXNrIDU1MDAgb24gY3B1IDA6CiBlMTAwMF90c28gZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvZTEwMDAvZTEwMDBfbWFpbi5jOjI3NTIgW2lubGluZV0KIGUxMDAwX3htaXRf
ZnJhbWUrMHgxNGZlLzB4MmE5MCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAw
MF9tYWluLmM6MzIyNgogX19uZXRkZXZfc3RhcnRfeG1pdCBpbmNsdWRlL2xpbnV4L25ldGRldmlj
ZS5oOjUyNzMgW2lubGluZV0KIG5ldGRldl9zdGFydF94bWl0IGluY2x1ZGUvbGludXgvbmV0ZGV2
aWNlLmg6NTI4MiBbaW5saW5lXQogeG1pdF9vbmUgbmV0L2NvcmUvZGV2LmM6Mzg1MyBbaW5saW5l
XQogZGV2X2hhcmRfc3RhcnRfeG1pdCsweGVlLzB4M2EwIG5ldC9jb3JlL2Rldi5jOjM4NjkKIC4u
LgogdGNwX3dyaXRlX3htaXQrMHhmNjQvMHgzZWUwIG5ldC9pcHY0L3RjcF9vdXRwdXQuYzozMDAy
CiB0Y3BfcHVzaF9vbmUrMHg4Ny8weGEwIG5ldC9pcHY0L3RjcF9vdXRwdXQuYzozMTk5CiAKcmVh
ZCB0byAweGZmZmZjOTAwMDQxNGU0OTIgb2YgMiBieXRlcyBieSBpbnRlcnJ1cHQgb24gY3B1IDE6
CiBlMTAwMF9jbGVhbl90eF9pcnEgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDAvZTEw
MDBfbWFpbi5jOjM4NzEgW2lubGluZV0KIGUxMDAwX2NsZWFuKzB4MmZiLzB4MTU3MCBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9tYWluLmM6MzgwNAogX19uYXBpX3BvbGwr
MHg1ZC8weDNmMCBuZXQvY29yZS9kZXYuYzo3NjY2CiBuYXBpX3BvbGwgbmV0L2NvcmUvZGV2LmM6
NzcyOSBbaW5saW5lXQogbmV0X3J4X2FjdGlvbisweDZjYy8weDg5MCBuZXQvY29yZS9kZXYuYzo3
ODgxCiBoYW5kbGVfc29mdGlycXMrMHhiZS8weDI5MCBrZXJuZWwvc29mdGlycS5jOjYyMgogLi4u
Cgp2YWx1ZSBjaGFuZ2VkOiAweDAwODMgLT4gMHgwMDhkCgpSZXBvcnRlZCBieSBLZXJuZWwgQ29u
Y3VycmVuY3kgU2FuaXRpemVyIG9uOgpDUFU6IDEgVUlEOiAwIFBJRDogMTk0ODY1IENvbW06IHN5
ei4zLjgyNzkgTm90IHRhaW50ZWQgNi4xOC4wLTA4NjkxLWcyMDYxZjE4YWQ3NmUtZGlydHkgIzQ0
IFBSRUVNUFQodm9sdW50YXJ5KSAKSGFyZHdhcmUgbmFtZTogUUVNVSBTdGFuZGFyZCBQQyAoaTQ0
MEZYICsgUElJWCwgMTk5NiksIEJJT1MgMS4xNS4wLTEgMDQvMDEvMjAxNAo9PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KCkV4
ZWN1dGlvbiBGbG93ICYgQ29kZSBDb250ZXh0CkR1cmluZyBzdGFuZGFyZCBvdXRnb2luZyBuZXR3
b3JrIHRyYW5zYWN0aW9ucyBvdmVyIHRoZSBgZTEwMDBgIHF1ZXVlIGxheW91dCwgYGUxMDAwX3Rz
b2AgbWFwcyBidWZmZXIgcGFyYW1ldGVycyBpbnRvIGRlc2NyaXB0aW9ucyBhbmQgc2V0cyBgYnVm
ZmVyX2luZm8tPm5leHRfdG9fd2F0Y2hgOgpgYGBjCi8vIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2UxMDAwL2UxMDAwX21haW4uYwpzdGF0aWMgaW50IGUxMDAwX3RzbyhzdHJ1Y3QgZTEwMDBf
YWRhcHRlciAqYWRhcHRlciwKCQkgICAgIHN0cnVjdCBlMTAwMF90eF9yaW5nICp0eF9yaW5nLCBz
dHJ1Y3Qgc2tfYnVmZiAqc2tiLAoJCSAgICAgX19iZTE2IHByb3RvY29sKQp7CgkuLi4KCQljb250
ZXh0X2Rlc2MtPmNtZF9hbmRfbGVuZ3RoID0gY3B1X3RvX2xlMzIoY21kX2xlbmd0aCk7CgoJCWJ1
ZmZlcl9pbmZvLT50aW1lX3N0YW1wID0gamlmZmllczsKCQlidWZmZXJfaW5mby0+bmV4dF90b193
YXRjaCA9IGk7IC8vIDwtLSBDb25jdXJyZW50IDItYnl0ZSBsb2NrbGVzcyB3cml0ZQoKCQlpZiAo
KytpID09IHR4X3JpbmctPmNvdW50KQoJCQlpID0gMDsKCS4uLgp9CmBgYAoKU2ltdWx0YW5lb3Vz
bHksIGBlMTAwMF9jbGVhbl90eF9pcnEoKWAgb3BlcmF0ZXMgZnJvbSBJUlEvTkFQSSBsb29wcyB0
cmFja2luZyB0cmFpbGluZyBkZXNjcmlwdG9yIGNvbXBsZXRpb24sIGRpcmVjdGx5IHJlYWRpbmcg
YG5leHRfdG9fd2F0Y2hgIGZyb20gYWN0aXZlIGJvdW5kcyBiZWZvcmUgZXZhbHVhdGluZyB0aGUg
aGFyZHdhcmUgY29tcGxldGlvbiBtYXJrZXIgYml0OgpgYGBjCi8vIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2UxMDAwL2UxMDAwX21haW4uYwpzdGF0aWMgYm9vbCBlMTAwMF9jbGVhbl90eF9p
cnEoc3RydWN0IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIsCgkJCSAgICAgICBzdHJ1Y3QgZTEwMDBf
dHhfcmluZyAqdHhfcmluZykKewoJLi4uCglpID0gdHhfcmluZy0+bmV4dF90b19jbGVhbjsKCWVv
cCA9IHR4X3JpbmctPmJ1ZmZlcl9pbmZvW2ldLm5leHRfdG9fd2F0Y2g7IC8vIDwtLSBDb25jdXJy
ZW50IDItYnl0ZSBsb2NrbGVzcyByZWFkCgllb3BfZGVzYyA9IEUxMDAwX1RYX0RFU0MoKnR4X3Jp
bmcsIGVvcCk7CgoJd2hpbGUgKChlb3BfZGVzYy0+dXBwZXIuZGF0YSAmIGNwdV90b19sZTMyKEUx
MDAwX1RYRF9TVEFUX0REKSkgJiYKCS4uLgpgYGAKClJvb3QgQ2F1c2UgQW5hbHlzaXMKQSBLQ1NB
TiBkYXRhIHJhY2UgYXJpc2VzIGJlY2F1c2UgYGUxMDAwX2NsZWFuX3R4X2lycSgpYCBmZXRjaGVz
IGBuZXh0X3RvX3dhdGNoYCBiZWZvcmUgZXhhbWluaW5nIHRoZSB0cmFuc21pdCBjb21wbGV0aW9u
IHN5bmNocm9uaXphdGlvbiBgRTEwMDBfVFhEX1NUQVRfRERgIGJpdCBhc3luY2hyb25vdXNseSBh
Y3Jvc3MgaW5kZXBlbmRlbnQgY29yZSBjeWNsZXMuIFRoaXMgaW5oZXJlbnRseSBjYXVzZXMgY29s
bGlzaW9uIG92ZXJsYXBzIGFnYWluc3QgYmFja2dyb3VuZCBgZTEwMDBfeG1pdF9mcmFtZWAgY2Fs
bHMgcXVldWluZyBidWZmZXJzIG9udG8gaWRlbnRpY2FsIGFycmF5cyBkdXJpbmcgdHJhbnNtaXNz
aW9uIHBpcGVsaW5lcy4gV2hpbGUgbG9naWNhbCBzdHJ1Y3R1cmVzIGluaGVyZW50bHkgbWFzayBv
ZmYgcHJvY2Vzc2luZyBsb29wcyBpZiB0aGUgYEREYCBiaXQgZGVmYXVsdHMgbG9naWNhbGx5LCB1
bnByZWRpY3RhYmxlIGNvbXBpbGVyIGNhY2hpbmcgY2F1c2VzIHVub3B0aW1pemVkIHN0cnVjdHVy
ZSB0ZWFyaW5nLgpVbmZvcnR1bmF0ZWx5LCB3ZSB3ZXJlIHVuYWJsZSB0byBnZW5lcmF0ZSBhIHJl
cHJvZHVjZXIgZm9yIHRoaXMgYnVnLgoKUG90ZW50aWFsIEltcGFjdApUaGlzIGRhdGEgcmFjZSBw
cmVzZW50cyB0aGVvcmV0aWNhbCBsb2NhbCBtZW1vcnkgY29ycnVwdGlvbiBvciBuZXR3b3JraW5n
IHN0YXRlIGJyZWFrZG93biByaXNrcyBhbG9uZ3NpZGUgY29uc3RhbnQgS0NTQU4gcGVyZm9ybWFu
Y2UgZGVncmFkYXRpb24gaWYgYSBjb21waWxlciBpbmNvcnJlY3RseSBpbmZlcnMgdmlzaWJpbGl0
eSBhc3N1bXB0aW9ucyBhY3Jvc3MgdW5hbm5vdGF0ZWQgdmFyaWFibGVzIGJyaWRnaW5nIGhhcmR3
YXJlIHRyYW5zbWlzc2lvbiBzeW5jaHJvbml6YXRpb25zLiAKClByb3Bvc2VkIEZpeApJbXBsZW1l
bnRpbmcgYFJFQURfT05DRSgpYCBhbmQgYFdSSVRFX09OQ0UoKWAgYm91bmRzIGFyb3VuZCBgbmV4
dF90b193YXRjaGAgcmVzb2x2ZXMgdGhlIGRhdGEgcmFjZSBsb2dpY2FsbHksIGVuc3VyaW5nIGNv
cnJlY3QgbG9hZCBiYXJyaWVycyBvbiBOQVBJIGNvbnN1bWVyczoKCmBgYGRpZmYKLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDAvZTEwMDBfbWFpbi5jCisrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX21haW4uYwpAQCAtMjc0OSw3ICsyNzQ5LDcg
QEAgc3RhdGljIGludCBlMTAwMF90c28oc3RydWN0IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIsCiAJ
CWNvbnRleHRfZGVzYy0+Y21kX2FuZF9sZW5ndGggPSBjcHVfdG9fbGUzMihjbWRfbGVuZ3RoKTsK
IAogCQlidWZmZXJfaW5mby0+dGltZV9zdGFtcCA9IGppZmZpZXM7Ci0JCWJ1ZmZlcl9pbmZvLT5u
ZXh0X3RvX3dhdGNoID0gaTsKKwkJV1JJVEVfT05DRShidWZmZXJfaW5mby0+bmV4dF90b193YXRj
aCwgaSk7CiAKIAkJaWYgKCsraSA9PSB0eF9yaW5nLT5jb3VudCkKIAkJCWkgPSAwOwpAQCAtMzgz
OSw3ICszODM5LDcgQEAgc3RhdGljIGJvb2wgZTEwMDBfY2xlYW5fdHhfaXJxKHN0cnVjdCBlMTAw
MF9hZGFwdGVyICphZGFwdGVyLAogCXVuc2lnbmVkIGludCBieXRlc19jb21wbCA9IDAsIHBrdHNf
Y29tcGwgPSAwOwogCiAJaSA9IHR4X3JpbmctPm5leHRfdG9fY2xlYW47Ci0JZW9wID0gdHhfcmlu
Zy0+YnVmZmVyX2luZm9baV0ubmV4dF90b193YXRjaDsKKwllb3AgPSBSRUFEX09OQ0UodHhfcmlu
Zy0+YnVmZmVyX2luZm9baV0ubmV4dF90b193YXRjaCk7CiAJZW9wX2Rlc2MgPSBFMTAwMF9UWF9E
RVNDKCp0eF9yaW5nLCBlb3ApOwogCiAJd2hpbGUgKChlb3BfZGVzYy0+dXBwZXIuZGF0YSAmIGNw
dV90b19sZTMyKEUxMDAwX1RYRF9TVEFUX0REKSkgJiYKYGBgCiooTm90ZTogU2ltaWxhciBgV1JJ
VEVfT05DRWAgYm91bmRzIHNob3VsZCBhbHNvIGJlIGFwcGxpZWQgdG8gYGUxMDAwX3R4X21hcGAg
YW5kIGBlMTAwMF90eF9jc3VtYCByZXNwZWN0aXZlbHkpKgoKV2Ugd291bGQgYmUgaGlnaGx5IGhv
bm9yZWQgaWYgdGhpcyBjb3VsZCBiZSBvZiBhbnkgaGVscC4KCkJlc3QgcmVnYXJkcywKUmFjZVBp
bG90IFRlYW0K
