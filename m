Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F6E31B6DA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Feb 2021 11:05:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1FD5F8709A;
	Mon, 15 Feb 2021 10:05:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l73aM0JfKfEC; Mon, 15 Feb 2021 10:05:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8E393870A6;
	Mon, 15 Feb 2021 10:05:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E3581BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Feb 2021 10:05:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 497F4866A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Feb 2021 10:05:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IWZBKZPx0WhQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Feb 2021 10:05:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3BFC186738
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Feb 2021 10:05:21 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5aea71.dynamic.kabel-deutschland.de
 [95.90.234.113])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 149EC20645D6D;
 Mon, 15 Feb 2021 11:05:18 +0100 (CET)
To: Ederson de Souza <ederson.desouza@intel.com>
References: <20210212014212.41570-1-ederson.desouza@intel.com>
 <20210212014212.41570-3-ederson.desouza@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <bd0bfa55-de44-82e9-337a-e6254d3a8405@molgen.mpg.de>
Date: Mon, 15 Feb 2021 11:05:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210212014212.41570-3-ederson.desouza@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 2/2] igc: enable
 auxiliary PHC functions for the i225
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBFZGVyc29uLAoKCkFtIDEyLjAyLjIxIHVtIDAyOjQyIHNjaHJpZWIgRWRlcnNvbiBkZSBT
b3V6YToKPiBUaGUgaTIyNSBkZXZpY2Ugb2ZmZXJzIGEgbnVtYmVyIG9mIHNwZWNpYWwgUFRQIEhh
cmR3YXJlIENsb2NrIGZlYXR1cmVzIG9uCj4gdGhlIFNvZnR3YXJlIERlZmluZWQgUGlucyAoU0RQ
cykuIFRoaXMgcGF0Y2ggYWRkcyBzdXBwb3J0IGZvciB0d28gb2YgdGhlCj4gcG9zc2libGUgZnVu
Y3Rpb25zLCBuYW1lbHkgdGltZSBzdGFtcGluZyBleHRlcm5hbCBldmVudHMsIGFuZCBwZXJpb2Rp
Ywo+IG91dHB1dCBzaWduYWxzLgo+IAo+IFRoZSBhc3NpZ25tZW50IG9mIFBIQyBmdW5jdGlvbnMg
dG8gdGhlIGZvdXIgU0RQIGNhbiBiZSBmcmVlbHkgY2hvc2VuIGJ5Cj4gdGhlIHVzZXIuCj4gCj4g
V2hpbGUgaTIyNSBhbGxvd3MgdXAgdG8gZm91ciB0aW1lcnMgdG8gYmUgdXNlZCB0byBzb3VyY2Ug
dGhlIHRpbWUgdXNlZAo+IG9uIHRoZSBleHRlcm5hbCBldmVudHMgb3Igb3V0cHV0IHNpZ25hbHMs
IHRoaXMgcGF0Y2ggdXNlcyBvbmx5IG9uZSBvZgo+IHRob3NlIHRpbWVycy4KCldoeSBpcyB0aGF0
PyBCZWNhdXNlIGl04oCZcyBzaW1wbGVyIHRvIGltcGxlbWVudD8gUGxlYXNlIGFkZCB0aGUgcmVh
c29uIHRvIAp0aGUgY29tbWl0IG1lc3NhZ2UuCgpJdOKAmWQgYmUgYWxzbyBncmVhdCwgaWYgeW91
IG1lbnRpb25lZCB0aGUgZGF0YXNoZWV0IG5hbWUgYW5kIHJldmlzaW9uIAp1c2VkIGZvciBpbXBs
ZW1lbnRpbmcgdGhpcy4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
