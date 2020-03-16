Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0061868D1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2020 11:19:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6A24189A85;
	Mon, 16 Mar 2020 10:19:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id posgqKjwL+nv; Mon, 16 Mar 2020 10:19:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9190689A8C;
	Mon, 16 Mar 2020 10:19:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9D3111BF395
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 10:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 831B488561
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 10:18:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OhDyxFI9Qe3W for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2020 10:18:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ADCD988559
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 10:18:51 +0000 (UTC)
IronPort-SDR: K8uuusM8A4UE8OMosGFAzutCJ+i2cYOJCLo2qFBtxHhxqrVvN44XhtmX+YyQlUQRsB5RKVZcX+
 fzj+r60wkC6w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 03:18:51 -0700
IronPort-SDR: DiHKYa6hCdHjDOIQjqIpJbdc96jgMiCLkEHOmFrS8NT7201dXZQIwCUA1I6ZySvJwD34lx4yiB
 uOBsKj5BCh0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; d="scan'208";a="354976934"
Received: from shallens-mobl.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.41.122])
 by fmsmga001.fm.intel.com with ESMTP; 16 Mar 2020 03:18:49 -0700
To: Jesper Dangaard Brouer <brouer@redhat.com>, netdev@vger.kernel.org
References: <158435379870.2479973.8293720099992666964.stgit@carbon>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <384f0f02-ad31-979c-5714-dce3f8f6a27a@intel.com>
Date: Mon, 16 Mar 2020 11:18:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158435379870.2479973.8293720099992666964.stgit@carbon>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: trivial fixup of
 comments in i40e_xsk.c
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
Cc: intel-wired-lan@lists.osuosl.org,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wMy0xNiAxMToxNiwgSmVzcGVyIERhbmdhYXJkIEJyb3VlciB3cm90ZToKPiBUaGUg
Y29tbWVudCBhYm92ZSBpNDBlX3J1bl94ZHBfemMoKSB3YXMgY2xlYXJseSBjb3B5LXBhc3RlZCBm
cm9tCj4gZnVuY3Rpb24gaTQwZV94c2tfdW1lbV9zZXR1cCwgd2hpY2ggaXMganVzdCBhYm92ZS4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIDxicm91ZXJAcmVkaGF0
LmNvbT4KClRoYW5rcyEKCkFja2VkLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRl
bC5jb20+Cgo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hz
ay5jIHwgICAgNCArLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV94c2suYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2su
Ywo+IGluZGV4IDBiN2QyOTE5MmIyYy4uMzBkZmIwZDNkMTg1IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYwo+ICsrKyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYwo+IEBAIC0xODQsOCArMTg0LDYgQEAgaW50
IGk0MGVfeHNrX3VtZW1fc2V0dXAoc3RydWN0IGk0MGVfdnNpICp2c2ksIHN0cnVjdCB4ZHBfdW1l
bSAqdW1lbSwKPiAgICAqIEByeF9yaW5nOiBSeCByaW5nCj4gICAgKiBAeGRwOiB4ZHBfYnVmZiB1
c2VkIGFzIGlucHV0IHRvIHRoZSBYRFAgcHJvZ3JhbQo+ICAgICoKPiAtICogVGhpcyBmdW5jdGlv
biBlbmFibGVzIG9yIGRpc2FibGVzIGEgVU1FTSB0byBhIGNlcnRhaW4gcmluZy4KPiAtICoKPiAg
ICAqIFJldHVybnMgYW55IG9mIEk0MEVfWERQX3tQQVNTLCBDT05TVU1FRCwgVFgsIFJFRElSfQo+
ICAgICoqLwo+ICAgc3RhdGljIGludCBpNDBlX3J1bl94ZHBfemMoc3RydWN0IGk0MGVfcmluZyAq
cnhfcmluZywgc3RydWN0IHhkcF9idWZmICp4ZHApCj4gQEAgLTQ3NCw3ICs0NzIsNyBAQCB2b2lk
IGk0MGVfemNhX2ZyZWUoc3RydWN0IHplcm9fY29weV9hbGxvY2F0b3IgKmFsbG9jLCB1bnNpZ25l
ZCBsb25nIGhhbmRsZSkKPiAgIH0KPiAgIAo+ICAgLyoqCj4gLSAqIGk0MGVfY29uc3RydWN0X3Nr
Yl96YyAtIENyZWF0ZSBza2J1ZmZmIGZyb20gemVyby1jb3B5IFJ4IGJ1ZmZlcgo+ICsgKiBpNDBl
X2NvbnN0cnVjdF9za2JfemMgLSBDcmVhdGUgc2tidWZmIGZyb20gemVyby1jb3B5IFJ4IGJ1ZmZl
cgo+ICAgICogQHJ4X3Jpbmc6IFJ4IHJpbmcKPiAgICAqIEBiaTogUnggYnVmZmVyCj4gICAgKiBA
eGRwOiB4ZHBfYnVmZgo+IAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
