Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6DE743B65
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jun 2023 14:03:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9106D60C0E;
	Fri, 30 Jun 2023 12:03:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9106D60C0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688126602;
	bh=q/tUyAjwXEh0FD7gmhbsoi7LTAFuCJe1kxl8yGqTjyc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=uI8BFV9dnEvPS/JtTY+9FRDmZOwsO+TaFuYLFyBQx23DdnAPD4WCO20SIWbuEgdib
	 Nl3O5SnB5AOMHzGzttgGVqx/hkItSStyZlKTYrqx6EFsraK9Jq6zWzxTCRX41z2U7n
	 WFdtNIhjr4RGkhyei4FFPLI4UzqYzmUPTN7xupMZ1YKn8wFZ1qjS1URZHtZ/dIlNyb
	 /iQvhyPEzO1KTh36LctAVOoDGVgNgZkUfzHfie2lNW20NS0eFaEyL9vfgzG2IO6/vs
	 b2eZTe4uQ53aabEyv1hl5AgZqYwc5QALJ91MMrVqI6Kdpfl1KIe5Kod4ePU/bjTUH+
	 DSGmr4gSQnotA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ba1ZLnwsHqgv; Fri, 30 Jun 2023 12:03:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6291560597;
	Fri, 30 Jun 2023 12:03:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6291560597
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 902E91BF361
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 12:03:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 756388391F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 12:03:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 756388391F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rH7dVXXVIMiY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Jun 2023 12:03:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EDFCA81ED9
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EDFCA81ED9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 12:03:14 +0000 (UTC)
From: Florian Kauer <florian.kauer@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vedang Patel <vedang.patel@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jithu Joseph <jithu.joseph@intel.com>,
 Andre Guedes <andre.guedes@intel.com>,
 Simon Horman <simon.horman@corigine.com>
Date: Fri, 30 Jun 2023 14:03:06 +0200
Message-Id: <20230630120306.8534-1-florian.kauer@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1688126591;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=XZbPTleH8tvt6ILWOyc607090QYMkQzPFfKhUGy2cko=;
 b=uRmnxtDn3mLSSk1VRWVUabR3L6Cb6skeKPeVT8tsuZlMtQ0m9othNXwcY+wxZk2osYh2zu
 dtZTwk+Y8lLzDTe3O1qRy72VcVaZVWLwQoMocvOjyGsmQstf22NxkcJu15BIOkEZYulvNp
 vlbZv6/FdZvx1fi/EXz4XtwwbuBclM6BKA7okoxJTej9DWqlLsm+0j3eS3vIk40Grjx4xD
 VoHycBNcC9hfbdgImTYcTfxF3HWVQd62uWpZfy4yZc/WJgwDtbFasFjJVGu08bnRzHkfob
 bcxEpXz4Y8V63upjEwaaJ86rdOWm4oxqlHvmU27bD/vXqS8GU25IPhU92n/inQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1688126591;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=XZbPTleH8tvt6ILWOyc607090QYMkQzPFfKhUGy2cko=;
 b=7upiJJkMkWVEEcvMAtbhIM5502wHHDPKdKUndgk2PG6bRQmzDUchv9yucRd8kCUPjWBTiC
 otEXzvc7s7aDk4Cw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=uRmnxtDn; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=7upiJJkM
Subject: [Intel-wired-lan] [PATCH net v3] igc: Prevent garbled TX queue with
 XDP ZEROCOPY
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
Cc: netdev@vger.kernel.org, kurt@linutronix.de, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SW4gbm9ybWFsIG9wZXJhdGlvbiwgZWFjaCBwb3B1bGF0ZWQgcXVldWUgaXRlbSBoYXMKbmV4dF90
b193YXRjaCBwb2ludGluZyB0byB0aGUgbGFzdCBUWCBkZXNjIG9mIHRoZSBwYWNrZXQsCndoaWxl
IGVhY2ggY2xlYW5lZCBpdGVtIGhhcyBpdCBzZXQgdG8gMC4gSW4gcGFydGljdWxhciwKbmV4dF90
b191c2UgdGhhdCBwb2ludHMgdG8gdGhlIG5leHQgKG5lY2Vzc2FyaWx5IGNsZWFuKQppdGVtIHRv
IHVzZSBoYXMgbmV4dF90b193YXRjaCBzZXQgdG8gMC4KCldoZW4gdGhlIFRYIHF1ZXVlIGlzIHVz
ZWQgYm90aCBieSBhbiBhcHBsaWNhdGlvbiB1c2luZwpBRl9YRFAgd2l0aCBaRVJPQ09QWSBhcyB3
ZWxsIGFzIGEgc2Vjb25kIG5vbi1YRFAgYXBwbGljYXRpb24KZ2VuZXJhdGluZyBoaWdoIHRyYWZm
aWMsIHRoZSBxdWV1ZSBwb2ludGVycyBjYW4gZ2V0IGluCmFuIGludmFsaWQgc3RhdGUgd2hlcmUg
bmV4dF90b191c2UgcG9pbnRzIHRvIGFuIGl0ZW0Kd2hlcmUgbmV4dF90b193YXRjaCBpcyBOT1Qg
c2V0IHRvIDAuCgpIb3dldmVyLCB0aGUgaW1wbGVtZW50YXRpb24gYXNzdW1lcyBhdCBzZXZlcmFs
IHBsYWNlcwp0aGF0IHRoaXMgaXMgbmV2ZXIgdGhlIGNhc2UsIHNvIGlmIGl0IGRvZXMgaG9sZCwK
YmFkIHRoaW5ncyBoYXBwZW4uIEluIHBhcnRpY3VsYXIsIHdpdGhpbiB0aGUgbG9vcCBpbnNpZGUK
b2YgaWdjX2NsZWFuX3R4X2lycSgpLCBuZXh0X3RvX2NsZWFuIGNhbiBvdmVydGFrZSBuZXh0X3Rv
X3VzZS4KRmluYWxseSwgdGhpcyBwcmV2ZW50cyBhbnkgZnVydGhlciB0cmFuc21pc3Npb24gdmlh
CnRoaXMgcXVldWUgYW5kIGl0IG5ldmVyIGdldHMgdW5ibG9ja2VkIG9yIHNpZ25hbGVkLgpTZWNv
bmRseSwgaWYgdGhlIHF1ZXVlIGlzIGluIHRoaXMgZ2FyYmxlZCBzdGF0ZSwKdGhlIGlubmVyIGxv
b3Agb2YgaWdjX2NsZWFuX3R4X3JpbmcoKSB3aWxsIG5ldmVyIHRlcm1pbmF0ZSwKY29tcGxldGVs
eSBob2dnaW5nIGEgQ1BVIGNvcmUuCgpUaGUgcmVhc29uIGlzIHRoYXQgaWdjX3hkcF94bWl0X3pj
KCkgcmVhZHMgbmV4dF90b191c2UKYmVmb3JlIGFjcXVpcmluZyB0aGUgbG9jaywgYW5kIHdyaXRp
bmcgaXQgYmFjawoocG90ZW50aWFsbHkgdW5tb2RpZmllZCkgbGF0ZXIuIElmIGl0IGdvdCBtb2Rp
ZmllZApiZWZvcmUgbG9ja2luZywgdGhlIG91dGRhdGVkIG5leHRfdG9fdXNlIGlzIHdyaXR0ZW4K
cG9pbnRpbmcgdG8gYW4gaXRlbSB0aGF0IHdhcyBhbHJlYWR5IHVzZWQgZWxzZXdoZXJlCihhbmQg
dGh1cyBuZXh0X3RvX3dhdGNoIGdvdCB3cml0dGVuKS4KCkZpeGVzOiA5YWNmNTlhNzUyZDQgKCJp
Z2M6IEVuYWJsZSBUWCB2aWEgQUZfWERQIHplcm8tY29weSIpClNpZ25lZC1vZmYtYnk6IEZsb3Jp
YW4gS2F1ZXIgPGZsb3JpYW4ua2F1ZXJAbGludXRyb25peC5kZT4KUmV2aWV3ZWQtYnk6IEt1cnQg
S2FuemVuYmFjaCA8a3VydEBsaW51dHJvbml4LmRlPgpUZXN0ZWQtYnk6IEt1cnQgS2FuemVuYmFj
aCA8a3VydEBsaW51dHJvbml4LmRlPgpBY2tlZC1ieTogVmluaWNpdXMgQ29zdGEgR29tZXMgPHZp
bmljaXVzLmdvbWVzQGludGVsLmNvbT4KLS0tCgp2MiAtPiB2MzoKUmVzb2x2ZSBtZXJnZSBjb25m
bGljdAoKdjEgLT4gdjI6CkkgYWRkZWQgc29tZSBtb3JlIGNvbnRleHQgZm9yIGZ1cnRoZXIgY2xh
cmlmaWNhdGlvbiwKYnV0IGl0IGlzIGFsc28ganVzdCBob3cgSSBpbnRlcnByZXQgdGhlIGNvZGUu
CkFsc28gdGhlIHR5cG8gaXMgZml4ZWQgYW5kIGl0IGlzIHJldmVyc2UgY2hyaXN0bWFzIGFnYWlu
IPCfmIkKCi0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMgfCA0
ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYwppbmRleCAwMTljZTkxYzQ1
YWEuLjcyMmZmY2MzMTlmMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdjL2lnY19tYWluLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19t
YWluLmMKQEAgLTI4MzMsOSArMjgzMyw4IEBAIHN0YXRpYyB2b2lkIGlnY194ZHBfeG1pdF96Yyhz
dHJ1Y3QgaWdjX3JpbmcgKnJpbmcpCiAJc3RydWN0IG5ldGRldl9xdWV1ZSAqbnEgPSB0eHJpbmdf
dHhxKHJpbmcpOwogCXVuaW9uIGlnY19hZHZfdHhfZGVzYyAqdHhfZGVzYyA9IE5VTEw7CiAJaW50
IGNwdSA9IHNtcF9wcm9jZXNzb3JfaWQoKTsKLQl1MTYgbnR1ID0gcmluZy0+bmV4dF90b191c2U7
CiAJc3RydWN0IHhkcF9kZXNjIHhkcF9kZXNjOwotCXUxNiBidWRnZXQ7CisJdTE2IGJ1ZGdldCwg
bnR1OwogCiAJaWYgKCFuZXRpZl9jYXJyaWVyX29rKHJpbmctPm5ldGRldikpCiAJCXJldHVybjsK
QEAgLTI4NDUsNiArMjg0NCw3IEBAIHN0YXRpYyB2b2lkIGlnY194ZHBfeG1pdF96YyhzdHJ1Y3Qg
aWdjX3JpbmcgKnJpbmcpCiAJLyogQXZvaWQgdHJhbnNtaXQgcXVldWUgdGltZW91dCBzaW5jZSB3
ZSBzaGFyZSBpdCB3aXRoIHRoZSBzbG93IHBhdGggKi8KIAl0eHFfdHJhbnNfY29uZF91cGRhdGUo
bnEpOwogCisJbnR1ID0gcmluZy0+bmV4dF90b191c2U7CiAJYnVkZ2V0ID0gaWdjX2Rlc2NfdW51
c2VkKHJpbmcpOwogCiAJd2hpbGUgKHhza190eF9wZWVrX2Rlc2MocG9vbCwgJnhkcF9kZXNjKSAm
JiBidWRnZXQtLSkgewotLSAKMi4zOS4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
