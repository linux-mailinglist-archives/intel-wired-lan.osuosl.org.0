Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FE3D0449F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 17:19:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6161740A37;
	Thu,  8 Jan 2026 16:19:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L213Rd-a4pbN; Thu,  8 Jan 2026 16:19:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D133540BB5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767889175;
	bh=eoKGTSS9Y1MjzHxnz1g0o01sX+8CCVMkw9Wntq1ccAs=;
	h=To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=7Bfprddgb/qiGOAUzyKbTehWXXzY8W1eQd3hw8zqt0n8vKTAtW++6Df5ltxedm5aR
	 873Evh6pW0XPlZ986U5HJAuz8zVa5l0B8QZuZSMVPjW1Vk+jI4x7PDwjuXb3P1HtQf
	 /8MnIkL2hoQ+9XCpSOnILgpeSTgN4yCoNVeIsL6sEYU9iPaOHHLMIBliHuj5XmiOk7
	 Uw7aG55x3Usa3Yx7vVDT3eNNqGQ0MCawnlHUQuFAhKBRl1LOU9HRVouND6PBkZA1qn
	 3K2rHrNJ9gOQfSW3KQGm3+mHc0Ux3WuTFwa6oxMBM6Z4WZEotaFif0OyJ3dZAuRG8Z
	 HEUviZuU/PPlg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D133540BB5;
	Thu,  8 Jan 2026 16:19:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 00D24436
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 14:30:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DBDCA40B48
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 14:30:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4GA8iNcRxVpV for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 14:30:33 +0000 (UTC)
X-Greylist: delayed 916 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 08 Jan 2026 14:30:31 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AE5F140A4C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE5F140A4C
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=160.53.250.24;
 helo=gwsmtp.ge.ch; envelope-from=jeremie.wenger@edu.ge.ch; receiver=<UNKNOWN> 
Received: from gwsmtp.ge.ch (smtpsw24.ge.ch [160.53.250.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AE5F140A4C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 14:30:31 +0000 (UTC)
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Index: AQHcgKY4vqPf4k7m6ECp9OMR6mOttA==
Date: Thu, 8 Jan 2026 14:15:12 +0000
Message-ID: <c8bd43a3053047dba7999102920d37c9@edu.ge.ch>
Accept-Language: fr-CH, en-US
Content-Language: fr-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Content-Type: multipart/alternative;
 boundary="_000_c8bd43a3053047dba7999102920d37c9edugech_"
MIME-Version: 1.0
X-FEAS-BEC-Info: WlpIGw0aAQkEARIJHAEHBlJSCRoLAAEeDUhZUEhYSFhIWUhZXkguLUVaIy48WlpbWFhYWFldSFpcSAINGg0FAQ1GHw0GDw0aKA0MHUYPDUYLAEhZSFpeSAkGHAAHBhFGBEYGDx0RDQYoAQYcDQRGCwcFSFhIWkhZW0hZWEZZXF1GUF5GWV9ZSFBIWEhYSFtIWEhYSFhIWl5ICQYcAAcGEUYERgYPHRENBigBBhwNBEYLBwVIWEhbWkgBBhwNBEUfARoNDEUECQYoBAEbHBtGBxsdBxsERgcaD0hYSFpQSAQBBh0QRQMNGgYNBCgeDw0aRgMNGgYNBEYHGg9IWA==
X-SM-outgoing: yes
X-Mailman-Approved-At: Thu, 08 Jan 2026 16:19:35 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=edu.ge.ch;
 s=GVA21; c=relaxed/relaxed; 
 h=from:to:cc:subject:date:message-id:content-type:mime-version;
 bh=eoKGTSS9Y1MjzHxnz1g0o01sX+8CCVMkw9Wntq1ccAs=;
 b=MxCwRxiHOOKZnBxqArN0M/dR7aN7AlZBnuAn+lHShloQVZLRT0nGZqrFBEbuT8k+LNF9jiiDPWfA
 xhKD0mwD90r66G6w1Lz0pzatS+85laUf92srJAqsK7ej6o/Vu3REsOyHGDWUZ3CxdnoQ5iRojIic
 WB1Nk+g8015mM2SWiOQN/07C5b92X6ZpKOwYSiVbfBfmA3bYvEvwemRSotsXFFU7+CEYz19Q3xE8
 KI/UrwE0gLgWbbfFleZjjsg6flKMRKKL+MU975sluxEH3JCFP+IGiWnRxAwFhCIWsRsQvJywa9WN
 qlYPyNabx+wqbSJuM/GrbiPxmJ8xDLlgs7heqA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=edu.ge.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=edu.ge.ch header.i=@edu.ge.ch header.a=rsa-sha256
 header.s=GVA21 header.b=MxCwRxiH
Subject: [Intel-wired-lan] [REGRESSION] e1000e: RX stops after link down/up
 on Intel 8086:550a since v6.12.43 (fixed by suspend/resume)
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
From: "Wenger Jeremie \(EDU\) via Intel-wired-lan" <intel-wired-lan@osuosl.org>
Reply-To: "Wenger Jeremie \(EDU\)" <jeremie.wenger@edu.ge.ch>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--_000_c8bd43a3053047dba7999102920d37c9edugech_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCg0KSSB3b3VsZCBsaWtlIHRvIHJlcG9ydCBhIHJlZ3Jlc3Npb24gaW4gdGhlIGUx
MDAwZSBkcml2ZXIgYWZmZWN0aW5nIGFuIEludGVsIGludGVncmF0ZWQgRXRoZXJuZXQgY29udHJv
bGxlci4NCg0KDQpIYXJkd2FyZToNCkludGVsIEV0aGVybmV0IGNvbnRyb2xsZXIgWzgwODY6NTUw
YV0NCkRyaXZlcjogZTEwMDBlDQoNCg0KU3VtbWFyeToNClJYIHN0b3BzIHdvcmtpbmcgYWZ0ZXIg
YW4gRXRoZXJuZXQgbGluayBkb3duL3VwICh1bnBsdWcvcmVwbHVnIGNhYmxlKS4NClRYIHN0aWxs
IHdvcmtzLiBBIHN5c3RlbSBzdXNwZW5kL3Jlc3VtZSByZWxpYWJseSByZXN0b3JlcyBSWC4NCg0K
DQpSZWdyZXNzaW9uIHJhbmdlOg0KDQogICogICBXb3JraW5nOiB2Ni4xMi4yMg0KDQogICogICBC
cm9rZW46IHY2LjEyLjQzIC4uIHY2LjE4LjMgKHRlc3RlZCBvbiBEZWJpYW4gMTIgYmFja3BvcnRz
LCBEZWJpYW4gMTMsIERlYmlhbiBzaWQpLiB2Ni4xOC4zIGlzIHRoZSBtb3N0IHJlY2VudCBrZXJu
ZWwgdGVzdGVkIHNvIGZhciwgc28gdGhlIHJlZ3Jlc3Npb24gaXMgbGlrZWx5IHN0aWxsIHByZXNl
bnQgaW4gbmV3ZXIga2VybmVscy4NCg0KU3ltcHRvbXM6DQoNCiAgKiAgIExpbmsgaXMgZGV0ZWN0
ZWQgKDFHYnBzLCBmdWxsIGR1cGxleCkuDQoNCiAgKiAgIERIQ1AgRElTQ09WRVIgZnJhbWVzIGFy
ZSB0cmFuc21pdHRlZCAoY29uZmlybWVkIHZpYSBleHRlcm5hbCBwYWNrZXQgY2FwdHVyZSkuDQoN
CiAgKiAgIE5vIHBhY2tldHMgYXJlIHJlY2VpdmVkIChubyBESENQIE9GRkVSLCBSWCBhcHBlYXJz
IGRlYWQpLg0KDQogICogICBCb290aW5nIHdpdGggdGhlIGNhYmxlIHBsdWdnZWQgd29ya3MuDQoN
CiAgKiAgIFRoZSBpc3N1ZSBpcyB0cmlnZ2VyZWQgb25seSBhZnRlciB1bnBsdWdnaW5nIGFuZCBy
ZXBsdWdnaW5nIHRoZSBjYWJsZS4NCg0KICAqICAgQSBzdXNwZW5kL3Jlc3VtZSBjeWNsZSByZXN0
b3JlcyBSWCBpbW1lZGlhdGVseS4NCg0KICAqICAgVXNpbmcgYSBVU0IgRXRoZXJuZXQgYWRhcHRl
ciAocjgxNTIpIG9uIHRoZSBzYW1lIG5ldHdvcmsgd29ya3MgY29ycmVjdGx5Lg0KDQpSZXByb2R1
Y3Rpb24gc3RlcHM6DQoNCiAgMS4gIEJvb3Qgd2l0aCBFdGhlcm5ldCBjYWJsZSBwbHVnZ2VkLg0K
DQogIDIuICBWZXJpZnkgbmV0d29yayBjb25uZWN0aXZpdHkgd29ya3MuDQoNCiAgMy4gIFVucGx1
ZyB0aGUgRXRoZXJuZXQgY2FibGUuDQoNCiAgNC4gIFBsdWcgdGhlIEV0aGVybmV0IGNhYmxlIGJh
Y2sgaW4uDQoNCiAgNS4gIE9ic2VydmUgdGhhdCBSWCBubyBsb25nZXIgd29ya3MgKG5vIERIQ1Ag
T0ZGRVIpLg0KDQogIDYuICBTdXNwZW5kL3Jlc3VtZSB0aGUgc3lzdGVtIKH6IFJYIHdvcmtzIGFn
YWluLg0KDQpUaGlzIHN1Z2dlc3RzIHRoYXQgdGhlIFBIWSBvciBSWCBwYXRoIGlzIG5vdCBjb3Jy
ZWN0bHkgcmVpbml0aWFsaXplZCBvbiBsaW5rIHVwIGFmdGVyIGEgbGluayBkb3duIGV2ZW50LCB3
aGlsZSB0aGUgcmVzdW1lIHBhdGggcGVyZm9ybXMgYSBtb3JlIGNvbXBsZXRlIHJlc2V0Lg0KDQoN
CkkgY2FuIHByb3ZpZGUgYWRkaXRpb25hbCBsb2dzLCBldGh0b29sIHN0YXRpc3RpY3MsIG9yIHRl
c3QgcGF0Y2hlcyBpZiBuZWVkZWQuDQoNCg0KDQpCZXN0IHJlZ2FyZHMsDQoNCg0KSqimcqimbWll
IFdlbmdlcg0KDQoNCg0KDQo=

--_000_c8bd43a3053047dba7999102920d37c9edugech_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p></p>
<p class=3D"isSelectedEnd">Hello,</p>
<p class=3D"isSelectedEnd"><br>
</p>
<p class=3D"isSelectedEnd">I would like to report a regression in the e1000=
e driver affecting an Intel&nbsp;integrated Ethernet controller.</p>
<p class=3D"isSelectedEnd"><br>
</p>
<p class=3D"isSelectedEnd">Hardware:<br>
Intel Ethernet controller <span data-placeholder-token=3D"true" class=3D"te=
xt-token-text-primary cursor-text rounded-sm">
[8086:550a]</span><br>
Driver: e1000e</p>
<p class=3D"isSelectedEnd"><br>
</p>
<p class=3D"isSelectedEnd">Summary:<br>
RX stops working after an Ethernet link down/up (unplug/replug cable).<br>
TX still works. A system suspend/resume reliably restores RX.</p>
<p class=3D"isSelectedEnd"><br>
</p>
<p class=3D"isSelectedEnd">Regression range:</p>
<ul data-spread=3D"false">
<li>
<p class=3D"isSelectedEnd">Working: v6.12.22</p>
</li><li>
<p class=3D"isSelectedEnd">Broken: v6.12.43 .. v6.18.3 (tested on Debian 12=
 backports, Debian 13,&nbsp;Debian sid). v6.18.3 is the most recent kernel =
tested so far, so the&nbsp;regression is likely still present in newer kern=
els.</p>
</li></ul>
<p class=3D"isSelectedEnd">Symptoms:</p>
<ul data-spread=3D"false">
<li>
<p class=3D"isSelectedEnd">Link is detected (1Gbps, full duplex).</p>
</li><li>
<p class=3D"isSelectedEnd">DHCP DISCOVER frames are transmitted (confirmed =
via external packet capture).</p>
</li><li>
<p class=3D"isSelectedEnd">No packets are received (no DHCP OFFER, RX appea=
rs dead).</p>
</li><li>
<p class=3D"isSelectedEnd">Booting with the cable plugged works.</p>
</li><li>
<p class=3D"isSelectedEnd">The issue is triggered only after unplugging and=
 replugging the cable.</p>
</li><li>
<p class=3D"isSelectedEnd">A suspend/resume cycle restores RX immediately.<=
/p>
</li><li>
<p class=3D"isSelectedEnd">Using a USB Ethernet adapter (r8152) on the same=
 network works correctly.</p>
</li></ul>
<p class=3D"isSelectedEnd">Reproduction steps:</p>
<ol data-spread=3D"false" start=3D"1">
<li>
<p class=3D"isSelectedEnd">Boot with Ethernet cable plugged.</p>
</li><li>
<p class=3D"isSelectedEnd">Verify network connectivity works.</p>
</li><li>
<p class=3D"isSelectedEnd">Unplug the Ethernet cable.</p>
</li><li>
<p class=3D"isSelectedEnd">Plug the Ethernet cable back in.</p>
</li><li>
<p class=3D"isSelectedEnd">Observe that RX no longer works (no DHCP OFFER).=
</p>
</li><li>
<p class=3D"isSelectedEnd">Suspend/resume the system =A1=FA RX works again.=
</p>
</li></ol>
<p class=3D"isSelectedEnd">This suggests that the PHY or RX path is not cor=
rectly reinitialized on&nbsp;link up after a link down event, while the res=
ume path performs a more&nbsp;complete reset.</p>
<p class=3D"isSelectedEnd"><br>
</p>
<p class=3D"isSelectedEnd">I can provide additional logs, ethtool statistic=
s, or test patches if needed.</p>
<p><br>
</p>
<p><br>
</p>
<p>Best regards,</p>
<br>
<p></p>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"color:rgb(0,0,0)">
<div style=3D"font-family:Tahoma; font-size:13px"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt"></d=
iv>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt"></d=
iv>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt"></d=
iv>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt"></d=
iv>
<div style=3D"">
<div style=3D"font-family:Tahoma; font-size:13px"></div>
</div>
<div style=3D"font-family:calibri,helvetica,sans-serif,emojifont,&quot;appl=
e color emoji&quot;,&quot;segoe ui emoji&quot;,notocoloremoji,&quot;segoe u=
i symbol&quot;,&quot;android emoji&quot;,emojisymbols,serif,EmojiFont; font=
-size:16px">
<div style=3D"font-family:tahoma,serif,EmojiFont; font-size:13px">
<div>
<table cellspacing=3D"0" cellpadding=3D"0" style=3D"font-size:9pt; font-fam=
ily:arial,sans-serif; table-layout:fixed; width:312px">
<tbody>
<tr>
<td style=3D"width:397px"><span style=3D"font-size:9pt; font-family:arial,s=
ans-serif,serif,emojifont,serif,EmojiFont; font-weight:bold">J=A8=A6r=A8=A6=
mie Wenger<br>
</span><span style=3D"font-size:9pt; font-family:arial,sans-serif,serif,emo=
jifont,serif,EmojiFont; font-weight:bold"><br>
</span></td>
</tr>
<tr>
<td rowspan=3D"1" style=3D"width:397px"><br>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<div style=3D"font-family:tahoma,serif,EmojiFont; font-size:11.003pt"></div=
>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_c8bd43a3053047dba7999102920d37c9edugech_--
