Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 231BE48EC5B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jan 2022 16:13:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D13E60B0C;
	Fri, 14 Jan 2022 15:13:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ZjRf63fvFRS; Fri, 14 Jan 2022 15:13:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9917560B08;
	Fri, 14 Jan 2022 15:13:09 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E68021BF3E5
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jan 2022 14:13:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D1FF860AAC
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jan 2022 14:13:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8yMlfusGyJYG for <intel-wired-lan@osuosl.org>;
 Fri, 14 Jan 2022 14:13:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 09244607A4
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jan 2022 14:13:41 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 2BDE11F38F;
 Fri, 14 Jan 2022 14:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1642169619; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SQluvbm1CYl+8Xaq4R5soBgbpa26mnxBAhQLJ4lyJSY=;
 b=KgX3L02N/qNhBNHtKQYvAQLFITeVs4nus01bmDZTH3Ya6oNVMUsMDIOpUd0JRosQRSYUO5
 p4UqrO/Q4QQZObRqQSoYHULqQKKfZRVdOMQ9hN5iRz9t368OoPbKFCJa0pSPubMQIbqwmi
 CIQ53f/sYUd6PFmN3WcAQ7jFDFBrb7Y=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1642169619;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SQluvbm1CYl+8Xaq4R5soBgbpa26mnxBAhQLJ4lyJSY=;
 b=o20kYu8RX2He0384gMHGJ9VXY4L/4FgB7tHDjgFY670/Smo3LQpXiQjEkYV5BafoaQKz2O
 TfbVjdjtfp7LqKCg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id AEB0513B7F;
 Fri, 14 Jan 2022 14:13:38 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id 0O+PJhKF4WFaKQAAMHmgww
 (envelope-from <dkirjanov@suse.de>); Fri, 14 Jan 2022 14:13:38 +0000
Message-ID: <5521e35f-3adf-2949-f360-12e2f7946480@suse.de>
Date: Fri, 14 Jan 2022 17:13:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: ru
To: Corinna Vinschen <vinschen@redhat.com>, intel-wired-lan@osuosl.org,
 netdev@vger.kernel.org, Vinicius Costa Gomes <vinicius.gomes@intel.com>
References: <20220114114354.1071776-1-vinschen@redhat.com>
 <20220114114354.1071776-3-vinschen@redhat.com>
From: Denis Kirjanov <dkirjanov@suse.de>
In-Reply-To: <20220114114354.1071776-3-vinschen@redhat.com>
X-Mailman-Approved-At: Fri, 14 Jan 2022 15:13:05 +0000
Subject: Re: [Intel-wired-lan] [PATCH 2/2 net-next v2] igb: refactor XDP
 registration
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgoxLzE0LzIyIDE0OjQzLCBDb3Jpbm5hIFZpbnNjaGVuINC/0LjRiNC10YI6Cj4gT24gY2hhbmdp
bmcgdGhlIFJYIHJpbmcgcGFyYW1ldGVycyBpZ2IgdXNlcyBhIGhhY2sgdG8gYXZvaWQgYSB3YXJu
aW5nCj4gd2hlbiBjYWxsaW5nIHhkcF9yeHFfaW5mb19yZWcgdmlhIGlnYl9zZXR1cF9yeF9yZXNv
dXJjZXMuICBJdCBqdXN0Cj4gY2xlYXJzIHRoZSBzdHJ1Y3QgeGRwX3J4cV9pbmZvIGNvbnRlbnQu
Cj4gCj4gQ2hhbmdlIHRoaXMgdG8gdW5yZWdpc3RlciBpZiB3ZSdyZSBhbHJlYWR5IHJlZ2lzdGVy
ZWQgaW5zdGVhZC4gIEFMaWduCj4gY29kZSB0byB0aGUgaWdjIGNvZGUuCj4gCj4gRml4ZXM6IDlj
YmM5NDhiNWEyMGMgKCJpZ2I6IGFkZCBYRFAgc3VwcG9ydCIpCj4gU2lnbmVkLW9mZi1ieTogQ29y
aW5uYSBWaW5zY2hlbiA8dmluc2NoZW5AcmVkaGF0LmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfZXRodG9vbC5jIHwgIDQgLS0tLQo+ICAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMgICAgfCAxNSArKysrKysrKysrKy0tLS0K
PiAgIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9ldGh0b29s
LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX2V0aHRvb2wuYwo+IGluZGV4
IDUxYTJkY2FmNTUzZC4uMmE1NzgyMDYzZjRjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYi9pZ2JfZXRodG9vbC5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWdiL2lnYl9ldGh0b29sLmMKPiBAQCAtOTY1LDEwICs5NjUsNiBAQCBzdGF0aWMg
aW50IGlnYl9zZXRfcmluZ3BhcmFtKHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYsCj4gICAJCQlt
ZW1jcHkoJnRlbXBfcmluZ1tpXSwgYWRhcHRlci0+cnhfcmluZ1tpXSwKPiAgIAkJCSAgICAgICBz
aXplb2Yoc3RydWN0IGlnYl9yaW5nKSk7Cj4gICAKPiAtCQkJLyogQ2xlYXIgY29waWVkIFhEUCBS
WC1xdWV1ZSBpbmZvICovCj4gLQkJCW1lbXNldCgmdGVtcF9yaW5nW2ldLnhkcF9yeHEsIDAsCj4g
LQkJCSAgICAgICBzaXplb2YodGVtcF9yaW5nW2ldLnhkcF9yeHEpKTsKPiAtCj4gICAJCQl0ZW1w
X3JpbmdbaV0uY291bnQgPSBuZXdfcnhfY291bnQ7Cj4gICAJCQllcnIgPSBpZ2Jfc2V0dXBfcnhf
cmVzb3VyY2VzKCZ0ZW1wX3JpbmdbaV0pOwo+ICAgCQkJaWYgKGVycikgewo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jCj4gaW5kZXggMzhiYTkyMDIyY2Q0Li45NjM4
Y2I5YzYwMTQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2ln
Yl9tYWluLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4u
Ywo+IEBAIC00MzUyLDcgKzQzNTIsNyBAQCBpbnQgaWdiX3NldHVwX3J4X3Jlc291cmNlcyhzdHJ1
Y3QgaWdiX3JpbmcgKnJ4X3JpbmcpCj4gICB7Cj4gICAJc3RydWN0IGlnYl9hZGFwdGVyICphZGFw
dGVyID0gbmV0ZGV2X3ByaXYocnhfcmluZy0+bmV0ZGV2KTsKPiAgIAlzdHJ1Y3QgZGV2aWNlICpk
ZXYgPSByeF9yaW5nLT5kZXY7Cj4gLQlpbnQgc2l6ZTsKPiArCWludCBzaXplLCByZXM7Cj4gICAK
PiAgIAlzaXplID0gc2l6ZW9mKHN0cnVjdCBpZ2JfcnhfYnVmZmVyKSAqIHJ4X3JpbmctPmNvdW50
Owo+ICAgCj4gQEAgLTQzNzYsOSArNDM3NiwxNiBAQCBpbnQgaWdiX3NldHVwX3J4X3Jlc291cmNl
cyhzdHJ1Y3QgaWdiX3JpbmcgKnJ4X3JpbmcpCj4gICAJcnhfcmluZy0+eGRwX3Byb2cgPSBhZGFw
dGVyLT54ZHBfcHJvZzsKPiAgIAo+ICAgCS8qIFhEUCBSWC1xdWV1ZSBpbmZvICovCj4gLQlpZiAo
eGRwX3J4cV9pbmZvX3JlZygmcnhfcmluZy0+eGRwX3J4cSwgcnhfcmluZy0+bmV0ZGV2LAo+IC0J
CQkgICAgIHJ4X3JpbmctPnF1ZXVlX2luZGV4LCAwKSA8IDApCj4gLQkJZ290byBlcnI7Cj4gKwlp
ZiAoeGRwX3J4cV9pbmZvX2lzX3JlZygmcnhfcmluZy0+eGRwX3J4cSkpCj4gKwkJeGRwX3J4cV9p
bmZvX3VucmVnKCZyeF9yaW5nLT54ZHBfcnhxKTsKPiArCXJlcyA9IHhkcF9yeHFfaW5mb19yZWco
JnJ4X3JpbmctPnhkcF9yeHEsIHJ4X3JpbmctPm5ldGRldiwKPiArCQkJICAgICAgIHJ4X3Jpbmct
PnF1ZXVlX2luZGV4LCAwKTsKPiArCWlmIChyZXMgPCAwKSB7Cj4gKwkJbmV0ZGV2X2VycihyeF9y
aW5nLT5uZXRkZXYsCj4gKwkJCSAgICJGYWlsZWQgdG8gcmVnaXN0ZXIgeGRwX3J4cSBpbmRleCAl
dVxuIiwKPiArCQkJICAgcnhfcmluZy0+cXVldWVfaW5kZXgpOwpuaXQ6IHdvdWxkIGJlIG5pY2Ug
dG8gaGF2ZSB0aGUgc2FtZSBwcmludGluZyBmdW5jdGlvbnMgbGlrZSBkZXZfZXJyKCkKaW4gdGhl
IGVycm9yIGNhc2UKCj4gKwkJcmV0dXJuIHJlczsKPiArCX0KPiAgIAo+ICAgCXJldHVybiAwOwo+
ICAgCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
