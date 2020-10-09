Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BDB2896F8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Oct 2020 22:02:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F3B3887894;
	Fri,  9 Oct 2020 20:02:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EZfV3YO3EynS; Fri,  9 Oct 2020 20:01:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D90BD878E6;
	Fri,  9 Oct 2020 20:01:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 123901BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:53:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F3ECF86B34
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:53:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y7x7Wl4Jauyp for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Oct 2020 19:53:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1B11F871F4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:53:55 +0000 (UTC)
IronPort-SDR: B9snL3pkSlcVIb4GHOXsjsqiyDNOme48Px08LyhAFYUyHcs7bk2Sr+1nAjsZIEHcclOVgmNxCq
 V6I9hCk1gYiA==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="229715385"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="229715385"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:53:54 -0700
IronPort-SDR: bZn0Zma13YkX7FJFkNsCYMjMNff2FSiB/MgoUwYT50qMOfu0yRYfZtOtUYx1uwuwPtN+tdFX+r
 hwly4wq6Ikyg==
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="519847271"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:53:53 -0700
From: ira.weiny@intel.com
To: Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>
Date: Fri,  9 Oct 2020 12:50:28 -0700
Message-Id: <20201009195033.3208459-54-ira.weiny@intel.com>
X-Mailer: git-send-email 2.28.0.rc0.12.gb6a658bd00c9
In-Reply-To: <20201009195033.3208459-1-ira.weiny@intel.com>
References: <20201009195033.3208459-1-ira.weiny@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 09 Oct 2020 20:01:20 +0000
Subject: [Intel-wired-lan] [PATCH RFC PKS/PMEM 53/58] lib: Utilize new
 kmap_thread()
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
Cc: linux-aio@kvack.org, Song Liu <songliubraving@fb.com>,
 linux-efi@vger.kernel.org, kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-mmc@vger.kernel.org, Dave Hansen <dave.hansen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 target-devel@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-kselftest@vger.kernel.org, samba-technical@lists.samba.org,
 Ira Weiny <ira.weiny@intel.com>, ceph-devel@vger.kernel.org,
 drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org,
 linux-cifs@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-nvdimm@lists.01.org,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 linux-afs@lists.infradead.org, cluster-devel@redhat.com,
 linux-cachefs@redhat.com, intel-wired-lan@lists.osuosl.org,
 Yonghong Song <yhs@fb.com>, linux-ext4@vger.kernel.org,
 Andrii Nakryiko <andriin@fb.com>, Fenghua Yu <fenghua.yu@intel.com>,
 linux-um@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 ecryptfs@vger.kernel.org, linux-erofs@lists.ozlabs.org,
 reiserfs-devel@vger.kernel.org, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, xen-devel@lists.xenproject.org,
 KP Singh <kpsingh@chromium.org>, Dan Williams <dan.j.williams@intel.com>,
 io-uring@vger.kernel.org, linux-bcache@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 netdev@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, Martin KaFai Lau <kafai@fb.com>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogSXJhIFdlaW55IDxpcmEud2VpbnlAaW50ZWwuY29tPgoKVGhlc2Uga21hcCgpIGNhbGxz
IGFyZSBsb2NhbGl6ZWQgdG8gYSBzaW5nbGUgdGhyZWFkLiAgVG8gYXZvaWQgdGhlIG92ZXIKaGVh
ZCBvZiBnbG9iYWwgUEtSUyB1cGRhdGVzIHVzZSB0aGUgbmV3IGttYXBfdGhyZWFkKCkgY2FsbC4K
CkNjOiBBbGV4YW5kZXIgVmlybyA8dmlyb0B6ZW5pdi5saW51eC5vcmcudWs+CkNjOiAiSsOpcsO0
bWUgR2xpc3NlIiA8amdsaXNzZUByZWRoYXQuY29tPgpDYzogTWFydGluIEthRmFpIExhdSA8a2Fm
YWlAZmIuY29tPgpDYzogU29uZyBMaXUgPHNvbmdsaXVicmF2aW5nQGZiLmNvbT4KQ2M6IFlvbmdo
b25nIFNvbmcgPHloc0BmYi5jb20+CkNjOiBBbmRyaWkgTmFrcnlpa28gPGFuZHJpaW5AZmIuY29t
PgpDYzogSm9obiBGYXN0YWJlbmQgPGpvaG4uZmFzdGFiZW5kQGdtYWlsLmNvbT4KQ2M6IEtQIFNp
bmdoIDxrcHNpbmdoQGNocm9taXVtLm9yZz4KU2lnbmVkLW9mZi1ieTogSXJhIFdlaW55IDxpcmEu
d2VpbnlAaW50ZWwuY29tPgotLS0KIGxpYi9pb3ZfaXRlci5jIHwgMTIgKysrKysrLS0tLS0tCiBs
aWIvdGVzdF9icGYuYyB8ICA0ICsrLS0KIGxpYi90ZXN0X2htbS5jIHwgIDggKysrKy0tLS0KIDMg
ZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvbGliL2lvdl9pdGVyLmMgYi9saWIvaW92X2l0ZXIuYwppbmRleCA1ZTQwNzg2YzhmMTIu
LjFkNDdmOTU3Y2Y5NSAxMDA2NDQKLS0tIGEvbGliL2lvdl9pdGVyLmMKKysrIGIvbGliL2lvdl9p
dGVyLmMKQEAgLTIwOCw3ICsyMDgsNyBAQCBzdGF0aWMgc2l6ZV90IGNvcHlfcGFnZV90b19pdGVy
X2lvdmVjKHN0cnVjdCBwYWdlICpwYWdlLCBzaXplX3Qgb2Zmc2V0LCBzaXplX3QgYgogCX0KIAkv
KiBUb28gYmFkIC0gcmV2ZXJ0IHRvIG5vbi1hdG9taWMga21hcCAqLwogCi0Ja2FkZHIgPSBrbWFw
KHBhZ2UpOworCWthZGRyID0ga21hcF90aHJlYWQocGFnZSk7CiAJZnJvbSA9IGthZGRyICsgb2Zm
c2V0OwogCWxlZnQgPSBjb3B5b3V0KGJ1ZiwgZnJvbSwgY29weSk7CiAJY29weSAtPSBsZWZ0OwpA
QCAtMjI1LDcgKzIyNSw3IEBAIHN0YXRpYyBzaXplX3QgY29weV9wYWdlX3RvX2l0ZXJfaW92ZWMo
c3RydWN0IHBhZ2UgKnBhZ2UsIHNpemVfdCBvZmZzZXQsIHNpemVfdCBiCiAJCWZyb20gKz0gY29w
eTsKIAkJYnl0ZXMgLT0gY29weTsKIAl9Ci0Ja3VubWFwKHBhZ2UpOworCWt1bm1hcF90aHJlYWQo
cGFnZSk7CiAKIGRvbmU6CiAJaWYgKHNraXAgPT0gaW92LT5pb3ZfbGVuKSB7CkBAIC0yOTIsNyAr
MjkyLDcgQEAgc3RhdGljIHNpemVfdCBjb3B5X3BhZ2VfZnJvbV9pdGVyX2lvdmVjKHN0cnVjdCBw
YWdlICpwYWdlLCBzaXplX3Qgb2Zmc2V0LCBzaXplX3QKIAl9CiAJLyogVG9vIGJhZCAtIHJldmVy
dCB0byBub24tYXRvbWljIGttYXAgKi8KIAotCWthZGRyID0ga21hcChwYWdlKTsKKwlrYWRkciA9
IGttYXBfdGhyZWFkKHBhZ2UpOwogCXRvID0ga2FkZHIgKyBvZmZzZXQ7CiAJbGVmdCA9IGNvcHlp
bih0bywgYnVmLCBjb3B5KTsKIAljb3B5IC09IGxlZnQ7CkBAIC0zMDksNyArMzA5LDcgQEAgc3Rh
dGljIHNpemVfdCBjb3B5X3BhZ2VfZnJvbV9pdGVyX2lvdmVjKHN0cnVjdCBwYWdlICpwYWdlLCBz
aXplX3Qgb2Zmc2V0LCBzaXplX3QKIAkJdG8gKz0gY29weTsKIAkJYnl0ZXMgLT0gY29weTsKIAl9
Ci0Ja3VubWFwKHBhZ2UpOworCWt1bm1hcF90aHJlYWQocGFnZSk7CiAKIGRvbmU6CiAJaWYgKHNr
aXAgPT0gaW92LT5pb3ZfbGVuKSB7CkBAIC0xNzQyLDEwICsxNzQyLDEwIEBAIGludCBpb3ZfaXRl
cl9mb3JfZWFjaF9yYW5nZShzdHJ1Y3QgaW92X2l0ZXIgKmksIHNpemVfdCBieXRlcywKIAkJcmV0
dXJuIDA7CiAKIAlpdGVyYXRlX2FsbF9raW5kcyhpLCBieXRlcywgdiwgLUVJTlZBTCwgKHsKLQkJ
dy5pb3ZfYmFzZSA9IGttYXAodi5idl9wYWdlKSArIHYuYnZfb2Zmc2V0OworCQl3Lmlvdl9iYXNl
ID0ga21hcF90aHJlYWQodi5idl9wYWdlKSArIHYuYnZfb2Zmc2V0OwogCQl3Lmlvdl9sZW4gPSB2
LmJ2X2xlbjsKIAkJZXJyID0gZigmdywgY29udGV4dCk7Ci0JCWt1bm1hcCh2LmJ2X3BhZ2UpOwor
CQlrdW5tYXBfdGhyZWFkKHYuYnZfcGFnZSk7CiAJCWVycjt9KSwgKHsKIAkJdyA9IHY7CiAJCWVy
ciA9IGYoJncsIGNvbnRleHQpO30pCmRpZmYgLS1naXQgYS9saWIvdGVzdF9icGYuYyBiL2xpYi90
ZXN0X2JwZi5jCmluZGV4IGNhN2Q2MzViY2NkOS4uNDQxZjgyMmY1NmJhIDEwMDY0NAotLS0gYS9s
aWIvdGVzdF9icGYuYworKysgYi9saWIvdGVzdF9icGYuYwpAQCAtNjUwNiwxMSArNjUwNiwxMSBA
QCBzdGF0aWMgdm9pZCAqZ2VuZXJhdGVfdGVzdF9kYXRhKHN0cnVjdCBicGZfdGVzdCAqdGVzdCwg
aW50IHN1YikKIAkJaWYgKCFwYWdlKQogCQkJZ290byBlcnJfa2ZyZWVfc2tiOwogCi0JCXB0ciA9
IGttYXAocGFnZSk7CisJCXB0ciA9IGttYXBfdGhyZWFkKHBhZ2UpOwogCQlpZiAoIXB0cikKIAkJ
CWdvdG8gZXJyX2ZyZWVfcGFnZTsKIAkJbWVtY3B5KHB0ciwgdGVzdC0+ZnJhZ19kYXRhLCBNQVhf
REFUQSk7Ci0JCWt1bm1hcChwYWdlKTsKKwkJa3VubWFwX3RocmVhZChwYWdlKTsKIAkJc2tiX2Fk
ZF9yeF9mcmFnKHNrYiwgMCwgcGFnZSwgMCwgTUFYX0RBVEEsIE1BWF9EQVRBKTsKIAl9CiAKZGlm
ZiAtLWdpdCBhL2xpYi90ZXN0X2htbS5jIGIvbGliL3Rlc3RfaG1tLmMKaW5kZXggZTdkYzNkZTM1
NWI3Li5lNDBkMjZmOTdmNDUgMTAwNjQ0Ci0tLSBhL2xpYi90ZXN0X2htbS5jCisrKyBiL2xpYi90
ZXN0X2htbS5jCkBAIC0zMjksOSArMzI5LDkgQEAgc3RhdGljIGludCBkbWlycm9yX2RvX3JlYWQo
c3RydWN0IGRtaXJyb3IgKmRtaXJyb3IsIHVuc2lnbmVkIGxvbmcgc3RhcnQsCiAJCWlmICghcGFn
ZSkKIAkJCXJldHVybiAtRU5PRU5UOwogCi0JCXRtcCA9IGttYXAocGFnZSk7CisJCXRtcCA9IGtt
YXBfdGhyZWFkKHBhZ2UpOwogCQltZW1jcHkocHRyLCB0bXAsIFBBR0VfU0laRSk7Ci0JCWt1bm1h
cChwYWdlKTsKKwkJa3VubWFwX3RocmVhZChwYWdlKTsKIAogCQlwdHIgKz0gUEFHRV9TSVpFOwog
CQlib3VuY2UtPmNwYWdlcysrOwpAQCAtMzk4LDkgKzM5OCw5IEBAIHN0YXRpYyBpbnQgZG1pcnJv
cl9kb193cml0ZShzdHJ1Y3QgZG1pcnJvciAqZG1pcnJvciwgdW5zaWduZWQgbG9uZyBzdGFydCwK
IAkJaWYgKCFwYWdlIHx8IHhhX3BvaW50ZXJfdGFnKGVudHJ5KSAhPSBEUFRfWEFfVEFHX1dSSVRF
KQogCQkJcmV0dXJuIC1FTk9FTlQ7CiAKLQkJdG1wID0ga21hcChwYWdlKTsKKwkJdG1wID0ga21h
cF90aHJlYWQocGFnZSk7CiAJCW1lbWNweSh0bXAsIHB0ciwgUEFHRV9TSVpFKTsKLQkJa3VubWFw
KHBhZ2UpOworCQlrdW5tYXBfdGhyZWFkKHBhZ2UpOwogCiAJCXB0ciArPSBQQUdFX1NJWkU7CiAJ
CWJvdW5jZS0+Y3BhZ2VzKys7Ci0tIAoyLjI4LjAucmMwLjEyLmdiNmE2NThiZDAwYzkKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
