Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7766B29D00B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Oct 2020 14:35:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2262B873E0;
	Wed, 28 Oct 2020 13:35:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tjE7nocq+xIi; Wed, 28 Oct 2020 13:35:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E61187416;
	Wed, 28 Oct 2020 13:35:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 52BC01BF857
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 47FEE86A1F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KXD49iEUN7sn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Oct 2020 13:35:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2F97486A58
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:04 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id m3so2473698pjf.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 06:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NzIkDSusvweawETrLrhiZSHfxgt8MfTvuw7UPyFw2XY=;
 b=Br2h686kMJAja5rv9btPNnMA2mAs9tQ2wfeIHHis+EmhqrQinV5UwKwgpYlKvPZZVp
 sdRiBVruJvwA7jW9C5iaOHjIsSyqI0gpioFzTQZQ9PmYplRV9wYaO0aXwYI21jeBOOfk
 4lUDR19YsP+o25Le3GyOO2MZSCbWQhi8ROGhIBBW86iIQQIF0+iFXSe/IIQlrCwoIdQ5
 WXVj7MY/KSuF2uW4hj8+w5W6ayHC3ZP9Nj3/305eidqP6tQEiby4q4hkHDeFfOTkq9Uj
 tUHumNzFhlOpKOUdUonqbyZrTXt86TzAepkGD7WG//M9Ul9AhXgYHYcPusXsipMTH+lP
 0BsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NzIkDSusvweawETrLrhiZSHfxgt8MfTvuw7UPyFw2XY=;
 b=OJ1MqpXlz9kBTfSETTLe8d+zN3VV5+V+D2ZaZWrD3GMEWRiegilSyRhvOIR+RzDoSS
 AV2nAPltJOVymQ4qhVW3KPi8StsXXEJ42in2kDjxs6jn/yiZjCEXrEBQ5aZfWARs8DBi
 5Wz7TK98RYhvYPgbD7GMHtkXTEgrco1tTFWLcyyVBfy7PgfsEKVLtLRSaqNMQP2CqrhM
 CN5BvbdyLt3t6nSbulyN2rGPsG2rPXQi1+cVKbIKeszKxoDcqRsNIuydbHih3SbqAbE0
 3ZIfF5AamnAzhW8x3iziIp9Bl16wRzMTbKHfzfwsljxHSEAS8IUBZ085zC0TEv6fzbgP
 718g==
X-Gm-Message-State: AOAM531YiX6DrhZjr5B0VISpnsJTfYemIuA2WQyQj0Jubs32Tggnp32N
 I93NeteyTSG7iKxXC7U4yA0=
X-Google-Smtp-Source: ABdhPJyK5fjp+iAQINsvMM8WDIBZa9uFaX1lx0DOnpBhsQp9rhb7bkcHNCznYmIhH2LPnjsyQucRbA==
X-Received: by 2002:a17:902:7c01:b029:d5:aad0:b7b1 with SMTP id
 x1-20020a1709027c01b02900d5aad0b7b1mr7737600pll.53.1603892103459; 
 Wed, 28 Oct 2020 06:35:03 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.43])
 by smtp.gmail.com with ESMTPSA id q14sm5935393pjp.43.2020.10.28.06.34.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Oct 2020 06:35:02 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: netdev@vger.kernel.org,
	bpf@vger.kernel.org
Date: Wed, 28 Oct 2020 14:34:28 +0100
Message-Id: <20201028133437.212503-1-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH bpf-next 0/9] Introduce biased
 busy-polling
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
Cc: daniel@iogearbox.net, qi.z.zhang@intel.com, ast@kernel.org,
 edumazet@google.com, jonathan.lemon@gmail.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, bjorn.topel@intel.com,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SmFrdWIgc3VnZ2VzdGVkIGluIFsxXSBhICJzdHJpY3QgYnVzeS1wb2xsaW5nIG1vZGUgd2l0aCBv
dXQKaW50ZXJydXB0cyIuIFRoaXMgaXMgYSBmaXJzdCBzdGFiIGF0IHRoYXQuCgpUaGlzIHNlcmll
cyBhZGRzIGEgbmV3IE5BUEkgbW9kZSwgY2FsbGVkIGJpYXNlZCBidXN5LXBvbGxpbmcsIHdoaWNo
IGlzCmFuIGV4dGVuc2lvbiB0byB0aGUgZXhpc3RpbmcgYnVzeS1wb2xsaW5nIG1vZGUuIFRoZSBu
ZXcgbW9kZSBpcwplbmFibGVkIG9uIHRoZSBzb2NrZXQgbGF5ZXIsIHdoZXJlIGEgc29ja2V0IHNl
dHRpbmcgdGhpcyBvcHRpb24KInByb21pc2llcyIgdG8gYnVzeS1wb2xsIHRoZSBOQVBJIGNvbnRl
eHQgdmlhIGEgc3lzdGVtIGNhbGwuIFdoZW4gdGhpcwptb2RlIGlzIGVuYWJsZWQsIHRoZSBOQVBJ
IGNvbnRleHQgd2lsbCBvcGVyYXRlIGluIGEgbW9kZSB3aXRoCmludGVycnVwdHMgZGlzYWJsZWQu
IFRoZSBrZXJuZWwgbW9uaXRvcnMgdGhhdCB0aGUgYnVzeS1wb2xsaW5nIHByb21pc2UKaXMgZnVs
ZmlsbGVkIGJ5IGFuIGludGVybmFsIHdhdGNoZG9nLiBJZiB0aGUgc29ja2V0IGZhaWwvc3RvcApw
ZXJmb3JtaW5nIHRoZSBidXN5LXBvbGxpbmcsIHRoZSBtb2RlIHdpbGwgYmUgZGlzYWJsZWQuCgpC
aWFzZWQgYnVzeS1wb2xsaW5nIGZvbGxvd3MgdGhlIHNhbWUgbWVjaGFuaXNtIGFzIHRoZSBleGlz
dGluZwpidXN5LXBvbGw7IFRoZSBuYXBpX2lkIGlzIHJlcG9ydGVkIHRvIHRoZSBzb2NrZXQgdmlh
IHRoZSBza2J1ZmYuIExhdGVyCmNvbW1pdHMgd2lsbCBleHRlbmQgbmFwaV9pZCByZXBvcnRpbmcg
dG8gWERQLCBpbiBvcmRlciB0byB3b3JrCmNvcnJlY3RseSB3aXRoIFhEUCBzb2NrZXRzLgogICAg
CkxldCB1cyB3YWxrIHRocm91Z2ggYSBmbG93IG9mIGV4ZWN1dGlvbjoKICAgIAoxLiBBIHNvY2tl
dCBzZXRzIHRoZSBuZXcgU09fQklBU19CVVNZX1BPTEwgc29ja2V0IG9wdGlvbiB0byB0cnVlLiBU
aGUKICAgc29ja2V0IG5vdyBzaG93cyBhbiBpbnRlbnQgb2YgZG9pbmcgYnVzeS1wb2xsaW5nLiBO
byBkYXRhIGhhcyBiZWVuCiAgIHJlY2VpdmVkIHRvIHRoZSBzb2NrZXQsIHNvIHRoZSBuYXBpX2lk
IG9mIHRoZSBzb2NrZXQgaXMgc3RpbGwgMAogICAobm9uLXZhbGlkKS4gQXMgdXN1YWwgZm9yIGJ1
c3ktcG9sbGluZywgdGhlIFNPX0JVU1lfUE9MTCBvcHRpb24KICAgYWxzbyBoYXMgdG8gYmUgbm9u
LXplcm8gZm9yIGJpYXNlZCBidXN5LXBvbGxpbmcuCgoyLiBEYXRhIGlzIHJlY2VpdmVkIG9uIHRo
ZSBzb2NrZXQgY2hhbmdpbmcgdGhlIG5hcGlfaWQgdG8gbm9uLXplcm8uCgozLiBUaGUgc29ja2V0
IGRvZXMgYSBzeXN0ZW0gY2FsbCB0aGF0IGhhcyB0aGUgYnVzeS1wb2xsaW5nIGxvZ2ljIHdpcmVk
CiAgIHVwLCBlLmcuIHJlY3Zmcm9tKCkgZm9yIFVEUCBzb2NrZXRzLiBUaGUgTkFQSSBjb250ZXh0
IGlzIG5vdyBtYXJrZWQKICAgYXMgYmlhc2VkIGJ1c3ktcG9sbC4gVGhlIGtlcm5lbCB3YXRjaGRv
ZyBpcyBhcm1lZC4gSWYgdGhlIE5BUEkKICAgY29udGV4dCBpcyBhbHJlYWR5IHJ1bm5pbmcsIGl0
IHdpbGwgdHJ5IHRvIGZpbmlzaCBhcyBzb29uIGFzCiAgIHBvc3NpYmxlIGFuZCBtb3ZlIHRvIGJ1
c3ktcG9sbGluZy4gSWYgdGhlIE5BUEkgY29udGV4dCBpcyBub3QKICAgcnVubmluZywgaXQgd2ls
bCBleGVjdXRlIHRoZSBOQVBJIHBvbGwgZnVuY3Rpb24gZm9yIHRoZQogICBjb3JyZXNwb25kaW5n
IG5hcGlfaWQuCgo0LiBHb3RvIDMsIG9yIHdhaXQgdW50aWwgdGhlIHdhdGNoZG9nIHRpbWVvdXQu
CgpUaGUgc2VyaWVzIGlzIG91dGxpbmVkIGFzIGZvbGxvd2luZzoKICBQYXRjaCAxLTI6IEJpYXNl
ZCBidXN5LXBvbGxpbmcsIGFuZCBvcHRpb24gdG8gc2V0IGJ1c3ktcG9sbCBidWRnZXQuCiAgUGF0
Y2ggMy02OiBCdXN5LXBvbGwgcGx1bWJpbmcgZm9yIFhEUCBzb2NrZXRzCiAgUGF0Y2ggNy05OiBB
ZGQgYnVzeS1wb2xsaW5nIHN1cHBvcnQgdG8gdGhlIHhkcHNvY2sgc2FtcGxlCgpQZXJmb3JtYW5j
ZSBVRFAgc29ja2V0czoKCkkgaGFja2VkIG5ldHBlcmYgdG8gdXNlIG5vbi1ibG9ja2luZyBzb2Nr
ZXRzLCBhbmQgbG9vcGluZyBvdmVyCnJlY3Zmcm9tKCkuIFRoZSBmb2xsb3dpbmcgY29tbWFuZC1s
aW5lIHdhcyB1c2VkOgogICQgbmV0cGVyZiAtSCAxOTIuMTY4LjEuMSAtbCAzMCAtdCBVRFBfUlIg
LXYgMiAtLSBcCiAgICAgIC1vIG1pbl9sYXRlbmN5LG1lYW5fbGF0ZW5jeSxtYXhfbGF0ZW5jeSxz
dGRkZXZfbGF0ZW5jeSx0cmFuc2FjdGlvbl9yYXRlCgpOb24tYmxvY2tpbmc6CiAgMTYsMTguNDUs
MTk1LDAuOTQsNTQwNzAuMzY5Ck5vbi1ibG9ja2luZyB3aXRoIGJpYXNlZCBidXN5LXBvbGxpbmc6
CiAgMTUsMTYuNTksMzgsMC43MCw2MDA4Ni4zMTMKClBlcmZvcm1hbmNlIFhEUCBzb2NrZXRzOgoK
VG9kYXksIHJ1bm5pbmcgWERQIHNvY2tldHMgc2FtcGxlIG9uIHRoZSBzYW1lIGNvcmUgYXMgdGhl
IHNvZnRpcnEKaGFuZGxpbmcsIHBlcmZvcm1hbmNlIHRhbmtzIG1haW5seSBiZWNhdXNlIHdlIGRv
IG5vdCB5aWVsZCB0bwp1c2VyLXNwYWNlIHdoZW4gdGhlIFhEUCBzb2NrZXQgUnggcXVldWUgaXMg
ZnVsbC4KICAjIHRhc2tzZXQgLWMgNSAuL3hkcHNvY2sgLWkgZW5zNzg1ZjEgLXEgNSAtbiAxIC1y
CiAgUng6IDY0S3BwcwogIAogICMgIyBiaWFzZWQgYnVzeS1wb2xsaW5nLCBidWRnZXQgOAogICMg
dGFza3NldCAtYyA1IC4veGRwc29jayAtaSBlbnM3ODVmMSAtcSA1IC1uIDEgLXIgLUIgLWIgOAog
IFJ4IDkuOU1wcHMKICAjICMgYmlhc2VkIGJ1c3ktcG9sbGluZywgYnVkZ2V0IDY0CiAgIyB0YXNr
c2V0IC1jIDUgLi94ZHBzb2NrIC1pIGVuczc4NWYxIC1xIDUgLW4gMSAtciAtQiAtYiA2NAogIFJ4
OiAxOS4zTXBwcwogICMgIyBiaWFzZWQgYnVzeS1wb2xsaW5nLCBidWRnZXQgMjU2CiAgIyB0YXNr
c2V0IC1jIDUgLi94ZHBzb2NrIC1pIGVuczc4NWYxIC1xIDUgLW4gMSAtciAtQiAtYiAyNTYKICBS
eDogMjEuNE1wcHMKICAjICMgYmlhc2VkIGJ1c3ktcG9sbGluZywgYnVkZ2V0IDUxMgogICMgdGFz
a3NldCAtYyA1IC4veGRwc29jayAtaSBlbnM3ODVmMSAtcSA1IC1uIDEgLXIgLUIgLWIgNTEyCiAg
Ung6IDIxLjRNcHBzCgpDb21wYXJlZCB0byB0aGUgdHdvLWNvcmUgY2FzZToKICAjIHRhc2tzZXQg
LWMgNCAuL3hkcHNvY2sgLWkgZW5zNzg1ZjEgLXEgMjAgLW4gMSAtcgogIFJ4OiAyMC43TXBwcwoK
V2UncmUgZ2V0dGluZyBiZXR0ZXIgc2luZ2xlLWNvcmUgcGVyZm9ybWFuY2UgdGhhbiB0d28sIGZv
ciB0aGlzIG5hw692ZQpkcm9wIHNjZW5hcmlvLgoKVGhlIGFib3ZlIHRlc3RzIHdhcyBkb25lIGZv
ciB0aGUgJ2ljZScgZHJpdmVyLgoKU29tZSBvdXRzdGFuZGluZyBxdWVzdGlvbnM6CgoqIERvZXMg
Ymlhc2VkIGJ1c3ktcG9sbGluZyBtYWtlIHNlbnNlIGZvciBub24tWERQIHNvY2tldHM/IEZvciBh
CiAgZGVkaWNhdGVkIHF1ZXVlLCBiaWFzZWQgYnVzeS1wb2xsaW5nIGhhcyBhIHN0cm9uZyBjYXNl
LiBXaGVuIHRoZQogIE5BUEkgaXMgc2hhcmVkIHdpdGggb3RoZXIgc29ja2V0cywgaXQgY2FuIGFm
ZmVjdCB0aGUgbGF0ZW5jaWVzIG9mCiAgc29ja2V0cyB0aGF0IHdlcmUgbm90IGV4cGxpY2l0eSBi
dXN5LXBvbGwgZW5hYmxlZC4gTm90ZSB0aGF0IHRoaXMKICB0cnVlIGZvciByZWd1bGFyIGJ1c3kt
cG9sbGluZyBhcyB3ZWxsLCBidXQgdGhlIGJpYXNlZCB2ZXJzaW9uIGlzCiAgc3RyaWN0ZXIuCgoq
IEN1cnJlbnRseSBidXN5LXBvbGxpbmcgZm9yIFVEUC9UQ1AgaXMgb25seSB3aXJlZCB1cCBpbiB0
aGUgcmVjdm1zZygpCiAgcGF0aC4gRG9lcyBpdCBtYWtlIHNlbnNlIHRvIGV4dGVuZCB0aGF0IHRv
IHNlbmRtc2coKSBhcyB3ZWxsPwoKKiBCaWFzZWQgYnVzeS1wb2xsaW5nIG9ubHkgbWFrZXMgc2Vu
c2UgZm9yIG5vbi1ibG9ja2luZyBzb2NrZXRzLiBSZWplY3QKICBlbmFibGluZyBvZiBiaWFzZWQg
YnVzeS1wb2xsaW5nIHVubGVzcyB0aGUgc29ja2V0IGlzIG5vbi1ibG9ja2luZz8KCiogVGhlIHdh
dGNoZG9nIGlzIDIwMCBtcy4gU2hvdWxkIGl0IGJlIGNvbmZpZ3VyYWJsZT8KCiogRXh0ZW5kaW5n
IHhkcF9yeHFfaW5mb19yZWcoKSB3aXRoIG5hcGlfaWQgdG91Y2hlcyBhIGxvdCBvZiBkcml2ZXJz
LAogIGFuZCBJJ3ZlIG9ubHkgdmVyaWZpZWQgdGhlIEludGVsIG9uZXMuIFNvbWUgZHJpdmVycyBp
bml0aWFsaXplIE5BUEkKICAoZ2VuZXJhdGluZyB0aGUgbmFwaV9pZCkgYWZ0ZXIgdGhlIHhkcF9y
eHFfaW5mb19yZWcoKSBjYWxsLCB3aGljaAogIG1heWJlIHdvdWxkIG9wZW4gdXAgZm9yIGFub3Ro
ZXIgQVBJPyBJIGRpZCBub3Qgc2VuZCB0aGlzIFJGQyB0byBhbGwKICB0aGUgZHJpdmVyIGF1dGhv
cnMuIEknbGwgZG8gdGhhdCBmb3IgYSBwYXRjaCBwcm9wZXIgc2VyaWVzLgoKKiBUb2RheSwgZW5h
YmxpbmcgYnVzeS1wb2xsaW5nIHJlcXVpcmUgQ0FQX05FVF9BRE1JTi4gRm9yIGEgTkFQSQogIGNv
bnRleHQgdGhhdCBzZXJ2aWNlcyBtdWx0aXBsZSBzb2NrZXQsIHRoaXMgbWFrZXMgc2Vuc2UgYmVj
YXVzZSBvbmUKICBzb2NrZXQgY2FuIGFmZmVjdCBwZXJmb3JtYW5jZSBvZiBvdGhlciBzb2NrZXRz
LiBOb3csIGZvciBhCiAgKmRlZGljYXRlZCogcXVldWUgZm9yIHNheSBYRFAgc29ja2V0LCB3b3Vs
ZCBpdCBiZSBPSyB0byBkcm9wCiAgQ0FQX05FVF9BRE1JTiwgYmVjYXVzZSBpdCBjYW5ub3QgYWZm
ZWN0IG90aGVyIHNvY2tldHMvdXNlcnM/CgpASmFrdWIgVGhhbmtzIGZvciB0aGUgZWFybHkgY29t
bWVudHMuIEkgbGVmdCB0aGUgY2hlY2sgaW4KbmFwaV9zY2hlZHVsZV9wcmVwKCksIGJlY2F1c2Ug
SSBoaXQgdGhhdCBmb3IgdGhlIEludGVsIGk0MGUgZHJpdmVyOwpmb3JjaW5nIGJ1c3ktcG9sbGlu
ZyBvbiBhIGNvcmUgb3V0c2lkZSB0aGUgaW50ZXJydXB0IGFmZmluaXR5IG1hc2suCgpbMV0gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjAwOTI1MTIwNjUyLjEwYjhkN2M1QGtpY2lu
c2tpLWZlZG9yYS1wYzFjMGhqbi5kaGNwLnRoZWZhY2Vib29rLmNvbS8KCkJqw7ZybiBUw7ZwZWwg
KDkpOgogIG5ldDogaW50cm9kdWNlIGJpYXNlZCBidXN5LXBvbGxpbmcKICBuZXQ6IGFkZCBTT19C
VVNZX1BPTExfQlVER0VUIHNvY2tldCBvcHRpb24KICB4c2s6IGFkZCBzdXBwb3J0IGZvciByZWN2
bXNnKCkKICB4c2s6IGNoZWNrIG5lZWQgd2FrZXVwIGZsYWcgaW4gc2VuZG1zZygpCiAgeHNrOiBh
ZGQgYnVzeS1wb2xsIHN1cHBvcnQgZm9yIHtyZWN2LHNlbmR9bXNnKCkKICB4c2s6IHByb3BhZ2F0
ZSBuYXBpX2lkIHRvIFhEUCBzb2NrZXQgUnggcGF0aAogIHNhbXBsZXMvYnBmOiB1c2UgcmVjdmZy
b20oKSBpbiB4ZHBzb2NrCiAgc2FtcGxlcy9icGY6IGFkZCBidXN5LXBvbGwgc3VwcG9ydCB0byB4
ZHBzb2NrCiAgc2FtcGxlcy9icGY6IGFkZCBvcHRpb24gdG8gc2V0IHRoZSBidXN5LXBvbGwgYnVk
Z2V0CgogYXJjaC9hbHBoYS9pbmNsdWRlL3VhcGkvYXNtL3NvY2tldC5oICAgICAgICAgIHwgICAz
ICsKIGFyY2gvbWlwcy9pbmNsdWRlL3VhcGkvYXNtL3NvY2tldC5oICAgICAgICAgICB8ICAgMyAr
CiBhcmNoL3BhcmlzYy9pbmNsdWRlL3VhcGkvYXNtL3NvY2tldC5oICAgICAgICAgfCAgIDMgKwog
YXJjaC9zcGFyYy9pbmNsdWRlL3VhcGkvYXNtL3NvY2tldC5oICAgICAgICAgIHwgICAzICsKIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2FtYXpvbi9lbmEvZW5hX25ldGRldi5jICB8ICAgMiArLQogZHJp
dmVycy9uZXQvZXRoZXJuZXQvYnJvYWRjb20vYm54dC9ibnh0LmMgICAgIHwgICAyICstCiAuLi4v
ZXRoZXJuZXQvY2F2aXVtL3RodW5kZXIvbmljdmZfcXVldWVzLmMgICAgfCAgIDIgKy0KIC4uLi9u
ZXQvZXRoZXJuZXQvZnJlZXNjYWxlL2RwYWEyL2RwYWEyLWV0aC5jICB8ICAgMiArLQogZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguYyAgIHwgICAyICstCiBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Jhc2UuYyAgICAgfCAgIDQgKy0KIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5jICAgICB8ICAgMiArLQogZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jIHwgICAyICstCiBkcml2ZXJzL25l
dC9ldGhlcm5ldC9tYXJ2ZWxsL212bmV0YS5jICAgICAgICAgfCAgIDIgKy0KIC4uLi9uZXQvZXRo
ZXJuZXQvbWFydmVsbC9tdnBwMi9tdnBwMl9tYWluLmMgICB8ICAgNCArLQogZHJpdmVycy9uZXQv
ZXRoZXJuZXQvbWVsbGFub3gvbWx4NC9lbl9yeC5jICAgIHwgICAyICstCiAuLi4vZXRoZXJuZXQv
bmV0cm9ub21lL25mcC9uZnBfbmV0X2NvbW1vbi5jICAgfCAgIDIgKy0KIGRyaXZlcnMvbmV0L2V0
aGVybmV0L3Fsb2dpYy9xZWRlL3FlZGVfbWFpbi5jICB8ICAgMiArLQogZHJpdmVycy9uZXQvZXRo
ZXJuZXQvc2ZjL3J4X2NvbW1vbi5jICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9zb2Npb25leHQvbmV0c2VjLmMgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L3RpL2Nwc3dfcHJpdi5jICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9uZXQvaHlwZXJ2
L25ldHZzYy5jICAgICAgICAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL25ldC90dW4uYyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvbmV0L3ZldGguYyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9uZXQvdmlydGlvX25l
dC5jICAgICAgICAgICAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL25ldC94ZW4tbmV0ZnJv
bnQuYyAgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIGZzL2V2ZW50cG9sbC5jICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICAgMyArLQogaW5jbHVkZS9saW51eC9uZXRkZXZpY2Uu
aCAgICAgICAgICAgICAgICAgICAgIHwgIDMzICsrKy0tLQogaW5jbHVkZS9uZXQvYnVzeV9wb2xs
LmggICAgICAgICAgICAgICAgICAgICAgIHwgIDQyICsrKysrLS0KIGluY2x1ZGUvbmV0L3NvY2su
aCAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgNCArCiBpbmNsdWRlL25ldC94ZHAuaCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDMgKy0KIGluY2x1ZGUvdWFwaS9hc20tZ2Vu
ZXJpYy9zb2NrZXQuaCAgICAgICAgICAgICB8ICAgMyArCiBuZXQvY29yZS9kZXYuYyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAxMTEgKysrKysrKysrKysrKysrLS0tCiBuZXQvY29y
ZS9zb2NrLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMTkgKysrCiBuZXQvY29y
ZS94ZHAuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDMgKy0KIG5ldC94ZHAv
eHNrLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAzNiArKysrKy0KIG5ldC94
ZHAveHNrX2J1ZmZfcG9vbC5jICAgICAgICAgICAgICAgICAgICAgICB8ICAxMyArLQogc2FtcGxl
cy9icGYveGRwc29ja191c2VyLmMgICAgICAgICAgICAgICAgICAgIHwgIDUzICsrKysrKystLQog
MzcgZmlsZXMgY2hhbmdlZCwgMjk2IGluc2VydGlvbnMoKyksIDg1IGRlbGV0aW9ucygtKQoKCmJh
c2UtY29tbWl0OiAzY2IxMmQyN2ZmNjU1ZTU3ZThlZmUzNDg2ZGNhMmEyMmY0ZTMwNTc4Ci0tIAoy
LjI3LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
