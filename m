Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1F1744EB0
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Jul 2023 18:55:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36D13410AC;
	Sun,  2 Jul 2023 16:55:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36D13410AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688316956;
	bh=BMLUzfdm6LXKX86Mm9Nku0cqFW34r0BTdIitfCeBzfg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f3PHiJxePazYZESqiiunh6mzNxbbKsgvl7sxEFoBy7yJj7FWkw37Ubt6CgLcI8LJ4
	 FOdAYV7uKlrrEUlhWS3+7OLuaTsyeGfxHJhXf/ADgLy/QhwTrK/9uUt3//CZ/1Li2T
	 XPGkbEl6aCF8XB60FlzxYV/eMuxoOQcsjGnJLmV+9Ggmrx/u8svYvVugvH9uXBgRQB
	 aXY/x684nFlWYJ7SVVBS5rBcGQ3ylHXpNJjfMR3+jGpO91ciXwJGEojXnu+eHOccVg
	 E/Is/Pu8l95haOMQzvpl4L5g3MPJedoI9R8YFp0llOOoCkDWXGauA3d1mB1zkxlLPC
	 xaZ3rT/rtp++w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XtCY8F47_6UE; Sun,  2 Jul 2023 16:55:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E62F410A5;
	Sun,  2 Jul 2023 16:55:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E62F410A5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C6701BF280
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Jul 2023 16:55:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D6441410A5
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Jul 2023 16:55:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6441410A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3cgBxcOSM__C for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Jul 2023 16:55:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12BFF410A2
Received: from mout.web.de (mout.web.de [212.227.15.3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12BFF410A2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Jul 2023 16:55:47 +0000 (UTC)
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.90.83]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MD5jp-1q6tX82n5t-009FDB; Sun, 02
 Jul 2023 18:55:15 +0200
Message-ID: <36b57ea5-baff-f964-3088-e1b186532cfe@web.de>
Date: Sun, 2 Jul 2023 18:55:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Florian Kauer <florian.kauer@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 kernel-janitors@vger.kernel.org,
 Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Mallikarjuna Chilakala <mallikarjuna.chilakala@intel.com>,
 Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, Tan Tee Min <tee.min.tan@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
References: <20230619100858.116286-2-florian.kauer@linutronix.de>
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20230619100858.116286-2-florian.kauer@linutronix.de>
X-Provags-ID: V03:K1:auUCEvWT9WvifEoSMz9upWpehnvmnhoa6/XeYqOPnfX1djLeSSf
 Nh7dH5eT9Ja6LCI17HDSUI5+B4nmOnkVlAT0pYVjQXoxPsGvB+62BmSgAo2Klnzx+fIlN5j
 0q60j4Q5A/EK8yUat5A9HsdONfeaBXvy52E82NoXqoyWiWsku4JUDFfJLlBcIme0ACwyD8f
 aIqIrfIiaim8iQFCVm0CA==
UI-OutboundReport: notjunk:1;M01:P0:sjw33rJnVBo=;Zg1GKobS4Zg5YuHttsqke7sY9Jz
 156KPv3ly5kUq3jg6+Md6SWth+Pq7bvOZNA1p4xtV1+ayNDq4d4UsMubBRRqp4d5t3nXC24c9
 2uqzjQ4D8WtQLEJPRkG8mvX+bTopsth2fjyhRreC0R49esHgMNtmpLFV/BVVJ4X3CfEuQekBq
 IMYSoq6BoyOieMEmfi+hb9OBEd1VPcERQjmKnj1Vv7JKl7tXvzLb4SqV2SSprJy5YOllU/FEC
 1Qz3V91WN4Diw7hHMPVBSqN6UuNEEcx53kpeZMwpNO90O9oWeztqQO4ISe5RAx7/7zd+d1+gj
 FF1UL3rxa7QHynamjltydWmZfkwCMneZz1z9QpwLRlcUtPBHwc3EzbiYxOuTrRa0PTAvms+LZ
 uKrf+u+wrt82LO8bC1iZPCY8dBSxvmPHW6VJZNBKMoGmHcST983n3KiVi0evjw0UW5Upii75S
 IIsq1jJ129x38DVpVI+4b2ge9fChFLFZABDpQiR1kHPenAtYBIsaC8UW7YRxoLoJFIZbk4Zby
 OqJ5oU+8JwltqhlVAjvHSIu3fSDzBL1pv1t9U7vuLpD3qzyP5zcJzVpJFUOemoO7pQnJw9i84
 Ff0aWroY0BVmJmuf+YaLmkdFxq7RuJ2gl3u6IVhpNW520moF1cNCAzhGMLFPcGhE8IvpFYvBL
 bL7boZbL2PZEMBPSeZpm51NmzevPS5G2njlGVODOPasyYJ1idp1x54HQ7uC30o1b7H6uIK/Gp
 ikuQndxZHY9JrkoJr+7JdxIwxGqe09KF1+G/MiGgsMxx4OYQAhPCsGJbO2JGDbdbg35eH8iuz
 Ov7OGZb8p2PO6nsJtVRqs8zmkpK0aWv3WqcoByYgwudXz6PejN2jVm3RwArMsZACF+H/HJqPH
 jnuiqNYp47yyfCrjHPWHfiTbZ3yUrGACB2sJwp4kwtNod2oVrS9Y9zwHzrky3jAaxi/erURLI
 yOKjeEtV7E2zvMcAKfBPRqpZnKs=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=web.de; 
 s=s29768273; t=1688316915; x=1688921715; i=markus.elfring@web.de;
 bh=flCzFl53mqj6HfIawDN80wtxO3NXIioPCQrUVTp1EYI=;
 h=X-UI-Sender-Class:Date:To:Cc:References:Subject:From:In-Reply-To;
 b=JsHzxxFVaF3cqTVwPVbTOlE1oh8GZORb2Dm9tRDL0/IfimGupkrUrtMPsN3uoM0QSi0u8T3
 ynl7BDA4nZ+3z9AcHVdOqV2ycgoITgNl3AQ4kYTrcRkaG7//mRtUnv+4TQ0Vx/03YjMaghGc5
 Odp6WMCIaakJ65cT7WoHKUBNRSiIxraDkXptrAEqX0rB8ziWGTyBaabQ/fOJznH80DInm9MVK
 gBEHO46+tmx7Fti4307bECGv8+Tq1zGB01lKhsRMFHHCo4qYSYwNDbWymlEx1Wi70y+twV17l
 V71OtLcjKaqhcmxUwL4giQh6Pb14+hvi6zKyTB982pu6Nwg2Vq8Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=web.de header.i=markus.elfring@web.de
 header.a=rsa-sha256 header.s=s29768273 header.b=JsHzxxFV
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/6] igc: Rename qbv_enable to
 taprio_offload_enable
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
Cc: LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiBUaGUgcmVuYW1lIHNob3VsZCByZWR1Y2UgdGhpcyBjb25mdXNpb24uCgpXb3VsZCB0aGUgd29y
ZGluZyDigJxSZWR1Y2UgdGhpcyBjb25mdXNpb24gYnkgcmVuYW1pbmcgYSB2YXJpYWJsZSBhdCB0
aHJlZSBwbGFjZXPigJ0KYmUgbW9yZSBhcHByb3ByaWF0ZSBmb3IgYSBzdWJzZXF1ZW50IGNoYW5n
ZSBkZXNjcmlwdGlvbj8KClNlZSBhbHNvOgpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20v
bGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9Eb2N1bWVudGF0aW9uL3By
b2Nlc3Mvc3VibWl0dGluZy1wYXRjaGVzLnJzdD9oPXY2LjQjbjk0CgoKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNpbmNlIGl0IGlzIGEgcHVyZQo+IHJlbmFtZSwg
aXQgaGFzIG5vIGltcGFjdCBvbiBmdW5jdGlvbmFsaXR5Lgo+Cj4gRml4ZXM6IGUxNzA5MGViMjQ5
NCAoImlnYzogYWxsb3cgQmFzZVRpbWUgMCBlbnJvbGxtZW50IGZvciBRYnYiKQoKSG93IGRvZXMg
c3VjaCBpbmZvcm1hdGlvbiBmaXQgdG9nZXRoZXI/CgpSZWdhcmRzLApNYXJrdXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
