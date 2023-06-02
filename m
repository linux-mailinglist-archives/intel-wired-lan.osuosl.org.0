Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE12671FAE9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 09:25:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20916426EB;
	Fri,  2 Jun 2023 07:25:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20916426EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685690734;
	bh=McoiCmoL2+0zCNg4LAGx2QPE/JS+gxmxY8u/NVu6tpA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=5J5bPcjcvOOhlsf+myjPdnnvNkzxcLVp7/uxkrUxV/BXBsl0H8vPGgIdoa/zbBUNh
	 XIFX0WzQad6kWClYNZPVpXlNMGMRyt0z9P4zD9BbMsMk3+6V2PH4/wk88MCZC7bnTK
	 yFOBQ+mUbRsLHftJmtw6Lrv+nfVN5vYXGbkeGqxvuTrIH77i926r8ai2In3j6jlKnY
	 P+lVQzUN1dFudbZKyREG8nFHJfbqqeAZHwq9zVqlXGH5nCLfdhRUjGaj3ondF8KTpm
	 ZCDhWwnijUdXG6K+idcaWYpgQy42JA5akXrAeyDWGS2JI2BelXMX5t2upeRL/1DnlV
	 omvYYjEhFrdmQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BXSIfoTK93HG; Fri,  2 Jun 2023 07:25:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95BE741FD7;
	Fri,  2 Jun 2023 07:25:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95BE741FD7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9AE971BF599
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 07:25:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E80640568
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 07:25:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E80640568
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j70vCyOJtTjx for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jun 2023 07:25:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60E5340012
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com
 [IPv6:2607:f8b0:4864:20::229])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 60E5340012
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 07:25:26 +0000 (UTC)
Received: by mail-oi1-x229.google.com with SMTP id
 5614622812f47-3980f2df1e7so1407293b6e.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Jun 2023 00:25:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685690725; x=1688282725;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=gf8W1Xf2Y7RWDSr3IHqzLWdnQ7xsXqcQcsDxS67Q/m0=;
 b=GfNP0ObdyeIzUnuo//U233fvHc0sa4rcWcTns8TuGtjpMWXPDVHzyxuYQveTn6Iduw
 cfKic2/jI/lJbeDptdMOUSYGjaNaHKUajzyoCQwkjSw9PntEVSwN3csgVzNipeR1Km2G
 Ji+kTcrruXtDQDAi8PzNUcZQTHSCdZU3epwzbU8Iqo7kUICFCbTz10mHx8B0Mo1ScCJf
 gO+EB6UWuN0ecFw2eicpkW4eV7lXIDBARdz9FEqQwpAw2hcL3OfVM6E5rPy575e2McQ5
 L3c/tAsW6WOZrCwV8c6+ccTJlHZ8wxDR0nFOclLBr1SV1n338r9Uv546J+tkofxT0vii
 a2YA==
X-Gm-Message-State: AC+VfDxYavLHRTbpKbFCE9wnuANohaM9ckqjrQfybH2uo7qAHIiLBGSO
 JJUmHxHxbvuabEVv0kO+AfiCEoSxYi42inv+CgA=
X-Google-Smtp-Source: ACHHUZ7F5CHCtNGSo/ggdYthVmAaThYDjJ5hOQaNIpm2mWXuVvrZub3S98vio+deVXsuvQt/3yE5oQ==
X-Received: by 2002:a05:6808:91:b0:39a:bf0:4fe0 with SMTP id
 s17-20020a056808009100b0039a0bf04fe0mr1585786oic.15.1685690725263; 
 Fri, 02 Jun 2023 00:25:25 -0700 (PDT)
Received: from alarm.. ([157.82.204.254]) by smtp.gmail.com with ESMTPSA id
 j4-20020a170902c3c400b001add2ba4459sm625780plj.32.2023.06.02.00.25.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Jun 2023 00:25:24 -0700 (PDT)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Fri,  2 Jun 2023 16:25:16 +0900
Message-Id: <20230602072516.42502-1-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20221208.gappssmtp.com; s=20221208; t=1685690725; x=1688282725;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=gf8W1Xf2Y7RWDSr3IHqzLWdnQ7xsXqcQcsDxS67Q/m0=;
 b=31PQvYTSVnGBTgW0tWfUa/dgmsZ2jR2ZCkNW4Pzxrz24sFLSTjDNNXF1rgan7Xmgb0
 AUNBoYUkcFh5PNPV0UdA+zV498rVHnoWXcaR+NgFWT/zUeV/2y/RFFAIHgPHC7ZdgXEF
 VFCxoD41T0cF1Hc/45CtC6ASHyEpM47Kvquznpvtgap3wxoQfgIiD/vtjOoAvzl8SpxZ
 0C1LBMZJsttnRXnsvD4Ik4rF2e/r9bF53J3bdzwbAmrfHnQkwPDGumG5O8Q0iINYZRmZ
 AbCCVQhTvJbAvZysQvQWTTI4II+q6n1rE61RHhB+aqdmvVJxgtzFpaHakdiRdXHgoTjq
 evrg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20221208.gappssmtp.com
 header.i=@daynix-com.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=31PQvYTS
Subject: [Intel-wired-lan] [PATCH] e1000e: Add ICR clearing by corresponding
 IMS bit
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Andrew Melnychenko <andrew@daynix.com>,
 Dmitry Fleytman <dmitry.fleytman@gmail.com>,
 Akihiko Odaki <akihiko.odaki@daynix.com>, Jason Wang <jasowang@redhat.com>,
 qemu-devel@nongnu.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhlIGRhdGFzaGVldCBkb2VzIG5vdCBzYXkgd2hhdCBoYXBwZW5zIHdoZW4gaW50ZXJydXB0IHdh
cyBhc3NlcnRlZAooSUNSLklOVF9BU1NFUlQ9MSkgYW5kIGF1dG8gbWFzayBpcyAqbm90KiBhY3Rp
dmUuCkhvd2V2ZXIsIHNlY3Rpb24gb2YgMTMuMy4yNyB0aGUgUENJZSogR2JFIENvbnRyb2xsZXJz
IE9wZW4gU291cmNlClNvZnR3YXJlIERldmVsb3BlcuKAmXMgTWFudWFsLCB3aGljaCB3ZXJlIHdy
aXR0ZW4gZm9yIG9sZGVyIGRldmljZXMsCm5hbWVseSA2MzF4RVNCLzYzMnhFU0IsIDgyNTYzRUIv
ODI1NjRFQiwgODI1NzFFQi84MjU3MkVJICYKODI1NzNFLzgyNTczVi84MjU3M0wsIGRvZXMgc2F5
Ogo+IElmIElNUyA9IDBiLCB0aGVuIHRoZSBJQ1IgcmVnaXN0ZXIgaXMgYWx3YXlzIGNsZWFyLW9u
LXJlYWQuIElmIElNUyBpcwo+IG5vdCAwYiwgYnV0IHNvbWUgSUNSIGJpdCBpcyBzZXQgd2hlcmUg
dGhlIGNvcnJlc3BvbmRpbmcgSU1TIGJpdCBpcyBub3QKPiBzZXQsIHRoZW4gYSByZWFkIGRvZXMg
bm90IGNsZWFyIHRoZSBJQ1IgcmVnaXN0ZXIuIEZvciBleGFtcGxlLCBpZgo+IElNUyA9IDEwMTAx
MDEwYiBhbmQgSUNSID0gMDEwMTAxMDFiLCB0aGVuIGEgcmVhZCB0byB0aGUgSUNSIHJlZ2lzdGVy
Cj4gZG9lcyBub3QgY2xlYXIgaXQuIElmIElNUyA9IDEwMTAxMDEwYiBhbmQgSUNSID0gMDEwMTAx
MWIsIHRoZW4gYSByZWFkCj4gdG8gdGhlIElDUiByZWdpc3RlciBjbGVhcnMgaXQgZW50aXJlbHkg
KElDUi5JTlRfQVNTRVJURUQgPSAxYikuCgpMaW51eCBkb2VzIG5vIGxvbmdlciBhY3RpdmF0ZSBh
dXRvIG1hc2sgc2luY2UgY29tbWl0CjBhODA0N2FjNjhlNTBlNGNjYmFkY2ZjNmI2YjA3MDgwNWI5
NzY4ODUgYW5kIHRoZSByZWFsIGhhcmR3YXJlIGNsZWFycwpJQ1IgZXZlbiBpbiBzdWNoIGEgY2Fz
ZSBzbyB3ZSBhbHNvIHNob3VsZCBkbyBzby4KCkJ1Z2xpbms6IGh0dHBzOi8vYnVnemlsbGEucmVk
aGF0LmNvbS9zaG93X2J1Zy5jZ2k/aWQ9MTcwNzQ0MQpTaWduZWQtb2ZmLWJ5OiBBbmRyZXcgTWVs
bnljaGVua28gPGFuZHJld0BkYXluaXguY29tPgpTaWduZWQtb2ZmLWJ5OiBBa2loaWtvIE9kYWtp
IDxha2loaWtvLm9kYWtpQGRheW5peC5jb20+Ci0tLQpTdXBlcnNlZGVzOiA8MjAyMDEyMDMxMzMy
MzYuMjIyMjA3LTEtYW5kcmV3QGRheW5peC5jb20+CigiW1BBVENIIHYyXSBlMTAwMGU6IEFkZGVk
IElDUiBjbGVhcmluZyBieSBjb3JyZXNwb25kaW5nIElNUyBiaXQuIikKCiBody9uZXQvZTEwMDBl
X2NvcmUuYyB8IDM4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tCiBody9u
ZXQvdHJhY2UtZXZlbnRzICB8ICAxICsKIDIgZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygr
KSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9ody9uZXQvZTEwMDBlX2NvcmUuYyBiL2h3
L25ldC9lMTAwMGVfY29yZS5jCmluZGV4IDk3ODVlZjI3OWMuLjMzOGJiYmY0ZjQgMTAwNjQ0Ci0t
LSBhL2h3L25ldC9lMTAwMGVfY29yZS5jCisrKyBiL2h3L25ldC9lMTAwMGVfY29yZS5jCkBAIC0y
NjA3LDEyICsyNjA3LDM4IEBAIGUxMDAwZV9tYWNfaWNyX3JlYWQoRTEwMDBFQ29yZSAqY29yZSwg
aW50IGluZGV4KQogICAgICAgICBlMTAwMGVfbG93ZXJfaW50ZXJydXB0cyhjb3JlLCBJQ1IsIDB4
ZmZmZmZmZmYpOwogICAgIH0KIAotICAgIGlmICgoY29yZS0+bWFjW0lDUl0gJiBFMTAwMF9JQ1Jf
QVNTRVJURUQpICYmCi0gICAgICAgIChjb3JlLT5tYWNbQ1RSTF9FWFRdICYgRTEwMDBfQ1RSTF9F
WFRfSUFNRSkpIHsKLSAgICAgICAgdHJhY2VfZTEwMDBlX2lycV9pY3JfY2xlYXJfaWFtZSgpOwot
ICAgICAgICBlMTAwMGVfbG93ZXJfaW50ZXJydXB0cyhjb3JlLCBJQ1IsIDB4ZmZmZmZmZmYpOwot
ICAgICAgICB0cmFjZV9lMTAwMGVfaXJxX2ljcl9wcm9jZXNzX2lhbWUoKTsKLSAgICAgICAgZTEw
MDBlX2xvd2VyX2ludGVycnVwdHMoY29yZSwgSU1TLCBjb3JlLT5tYWNbSUFNXSk7CisgICAgaWYg
KGNvcmUtPm1hY1tJQ1JdICYgRTEwMDBfSUNSX0FTU0VSVEVEKSB7CisgICAgICAgIGlmIChjb3Jl
LT5tYWNbQ1RSTF9FWFRdICYgRTEwMDBfQ1RSTF9FWFRfSUFNRSkgeworICAgICAgICAgICAgdHJh
Y2VfZTEwMDBlX2lycV9pY3JfY2xlYXJfaWFtZSgpOworICAgICAgICAgICAgZTEwMDBlX2xvd2Vy
X2ludGVycnVwdHMoY29yZSwgSUNSLCAweGZmZmZmZmZmKTsKKyAgICAgICAgICAgIHRyYWNlX2Ux
MDAwZV9pcnFfaWNyX3Byb2Nlc3NfaWFtZSgpOworICAgICAgICAgICAgZTEwMDBlX2xvd2VyX2lu
dGVycnVwdHMoY29yZSwgSU1TLCBjb3JlLT5tYWNbSUFNXSk7CisgICAgICAgIH0KKworICAgICAg
ICAvKgorICAgICAgICAgKiBUaGUgZGF0YXNoZWV0IGRvZXMgbm90IHNheSB3aGF0IGhhcHBlbnMg
d2hlbiBpbnRlcnJ1cHQgd2FzIGFzc2VydGVkCisgICAgICAgICAqIChJQ1IuSU5UX0FTU0VSVD0x
KSBhbmQgYXV0byBtYXNrIGlzICpub3QqIGFjdGl2ZS4KKyAgICAgICAgICogSG93ZXZlciwgc2Vj
dGlvbiBvZiAxMy4zLjI3IHRoZSBQQ0llKiBHYkUgQ29udHJvbGxlcnMgT3BlbiBTb3VyY2UKKyAg
ICAgICAgICogU29mdHdhcmUgRGV2ZWxvcGVy4oCZcyBNYW51YWwsIHdoaWNoIHdlcmUgd3JpdHRl
biBmb3Igb2xkZXIgZGV2aWNlcywKKyAgICAgICAgICogbmFtZWx5IDYzMXhFU0IvNjMyeEVTQiwg
ODI1NjNFQi84MjU2NEVCLCA4MjU3MUVCLzgyNTcyRUkgJgorICAgICAgICAgKiA4MjU3M0UvODI1
NzNWLzgyNTczTCwgZG9lcyBzYXk6CisgICAgICAgICAqID4gSWYgSU1TID0gMGIsIHRoZW4gdGhl
IElDUiByZWdpc3RlciBpcyBhbHdheXMgY2xlYXItb24tcmVhZC4gSWYgSU1TCisgICAgICAgICAq
ID4gaXMgbm90IDBiLCBidXQgc29tZSBJQ1IgYml0IGlzIHNldCB3aGVyZSB0aGUgY29ycmVzcG9u
ZGluZyBJTVMgYml0CisgICAgICAgICAqID4gaXMgbm90IHNldCwgdGhlbiBhIHJlYWQgZG9lcyBu
b3QgY2xlYXIgdGhlIElDUiByZWdpc3Rlci4gRm9yCisgICAgICAgICAqID4gZXhhbXBsZSwgaWYg
SU1TID0gMTAxMDEwMTBiIGFuZCBJQ1IgPSAwMTAxMDEwMWIsIHRoZW4gYSByZWFkIHRvIHRoZQor
ICAgICAgICAgKiA+IElDUiByZWdpc3RlciBkb2VzIG5vdCBjbGVhciBpdC4gSWYgSU1TID0gMTAx
MDEwMTBiIGFuZAorICAgICAgICAgKiA+IElDUiA9IDAxMDEwMTFiLCB0aGVuIGEgcmVhZCB0byB0
aGUgSUNSIHJlZ2lzdGVyIGNsZWFycyBpdCBlbnRpcmVseQorICAgICAgICAgKiA+IChJQ1IuSU5U
X0FTU0VSVEVEID0gMWIpLgorICAgICAgICAgKgorICAgICAgICAgKiBMaW51eCBkb2VzIG5vIGxv
bmdlciBhY3RpdmF0ZSBhdXRvIG1hc2sgc2luY2UgY29tbWl0CisgICAgICAgICAqIDBhODA0N2Fj
NjhlNTBlNGNjYmFkY2ZjNmI2YjA3MDgwNWI5NzY4ODUgYW5kIHRoZSByZWFsIGhhcmR3YXJlCisg
ICAgICAgICAqIGNsZWFycyBJQ1IgZXZlbiBpbiBzdWNoIGEgY2FzZSBzbyB3ZSBhbHNvIHNob3Vs
ZCBkbyBzby4KKyAgICAgICAgICovCisgICAgICAgIGlmIChjb3JlLT5tYWNbSUNSXSAmIGNvcmUt
Pm1hY1tJTVNdKSB7CisgICAgICAgICAgICB0cmFjZV9lMTAwMGVfaXJxX2ljcl9jbGVhcl9pY3Jf
Yml0X2ltcyhjb3JlLT5tYWNbSUNSXSwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGNvcmUtPm1hY1tJTVNdKTsKKyAgICAgICAgICAgIGUxMDAwZV9s
b3dlcl9pbnRlcnJ1cHRzKGNvcmUsIElDUiwgMHhmZmZmZmZmZik7CisgICAgICAgIH0KICAgICB9
CiAKICAgICByZXR1cm4gcmV0OwpkaWZmIC0tZ2l0IGEvaHcvbmV0L3RyYWNlLWV2ZW50cyBiL2h3
L25ldC90cmFjZS1ldmVudHMKaW5kZXggZTk3ZTlkYzE3Yi4uOTEwMzQ4OGUxNyAxMDA2NDQKLS0t
IGEvaHcvbmV0L3RyYWNlLWV2ZW50cworKysgYi9ody9uZXQvdHJhY2UtZXZlbnRzCkBAIC0yMTcs
NiArMjE3LDcgQEAgZTEwMDBlX2lycV9yZWFkX2ltcyh1aW50MzJfdCBpbXMpICJDdXJyZW50IElN
UzogMHgleCIKIGUxMDAwZV9pcnFfaWNyX2NsZWFyX25vbm1zaXhfaWNyX3JlYWQodm9pZCkgIkNs
ZWFyaW5nIElDUiBvbiByZWFkIGR1ZSB0byBub24gTVNJLVggaW50IgogZTEwMDBlX2lycV9pY3Jf
Y2xlYXJfemVyb19pbXModm9pZCkgIkNsZWFyaW5nIElDUiBvbiByZWFkIGR1ZSB0byB6ZXJvIElN
UyIKIGUxMDAwZV9pcnFfaWNyX2NsZWFyX2lhbWUodm9pZCkgIkNsZWFyaW5nIElDUiBvbiByZWFk
IGR1ZSB0byBJQU1FIgorZTEwMDBlX2lycV9pY3JfY2xlYXJfaWNyX2JpdF9pbXModWludDMyX3Qg
aWNyLCB1aW50MzJfdCBpbXMpICJDbGVhcmluZyBJQ1Igb24gcmVhZCBkdWUgY29ycmVzcG9uZGlu
ZyBJTVMgYml0OiAweCV4ICYgMHgleCIKIGUxMDAwZV9pcnFfaWFtX2NsZWFyX2VpYW1lKHVpbnQz
Ml90IGlhbSwgdWludDMyX3QgY2F1c2UpICJDbGVhcmluZyBJTVMgZHVlIHRvIEVJQU1FLCBJQU06
IDB4JVgsIGNhdXNlOiAweCVYIgogZTEwMDBlX2lycV9pY3JfY2xlYXJfZWlhYyh1aW50MzJfdCBp
Y3IsIHVpbnQzMl90IGVpYWMpICJDbGVhcmluZyBJQ1IgYml0cyBkdWUgdG8gRUlBQywgSUNSOiAw
eCVYLCBFSUFDOiAweCVYIgogZTEwMDBlX2lycV9pbXNfY2xlYXJfc2V0X2ltYyh1aW50MzJfdCB2
YWwpICJDbGVhcmluZyBJTVMgYml0cyBkdWUgdG8gSU1DIHdyaXRlIDB4JXgiCi0tIAoyLjQwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
