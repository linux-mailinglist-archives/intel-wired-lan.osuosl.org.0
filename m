Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE355E83A3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 22:29:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B53856118E;
	Fri, 23 Sep 2022 20:29:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B53856118E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663964992;
	bh=DTlh7Lrm3EhllSv6JDdvKhsZgtdljsqm+bzqq6ItxDA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yaS/gGa0K0g2wyFrPChMnaADR70q9wpOSn5Qnqd3mfnrbTf1V3ppD6idF3MmowVUV
	 lhixJOxO7pGFh6s/bstrs6cUluobBwAycuv/dX6KWZYhLSycNHT1PVBGbi0b5bUBdE
	 ovILI/1ExQqfvGAcz3+k7fz39orw4f7UryvM6XrgiS3y1dJi2KWthKieIiAPn4FS/H
	 XqBwUeOEdfgCV63rKvs12bq6UmMu4Qeaxh3pYbOswFGvMpbaqsSXnVQMr9mUimDQTD
	 cZV16OcWbQJA5ART0uWDeAisiV1wUzvoz2Yri/rCFqC4tAdDfSWwd3TO+TmlVGuQfG
	 IvIhi2N0ejSGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id quHHCBdUkgKX; Fri, 23 Sep 2022 20:29:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA50F6FABE;
	Fri, 23 Sep 2022 20:29:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA50F6FABE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A82A81BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 686AA408DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 686AA408DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t9uUOii_VpfN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 20:28:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9D0F404A5
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C9D0F404A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:32 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id y11so1062299pjv.4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 13:28:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=9WHW9dcNJ7USo93XbepCTz52gEB8RJhZFTCAgOxjaWE=;
 b=PzmfHMEWJ6vgDhXAybTRudbQJxePkLxc5rw6QjCsZU4B4qzQEj/O0GYok9rRqluC8H
 1Y/zyluANG/ELHohQeAehigsW/l37iDAK4S2F5Acewc4NYg3Vg1VaIj0LVQ1kh8i4nyq
 SMRLtkJ+rwRS0bnOqigtvdVqZmGASg+vPa/X6mBW+26LNf020i2QkuW/MEEXlQsyws+M
 o5y6TkMEozuSRJk1BhdzZxg4/XX+VDVqsx2EqndnrbbAu16FBDDBTYqcYo/wg53jlA7K
 PXTq+MbeN+iCqdzRM4sdrDlBGcrrWhYORsJWfefGtgiqE57NHKtr1bZ3jBX5v8pq9By5
 0C6w==
X-Gm-Message-State: ACrzQf0jKxUvyK/EaO34ehufh5hD7yZCqJy8K0oO/EED5u4o4P3Cby5H
 HtFG5NTjbV43fv2QdBo8zLjIvA==
X-Google-Smtp-Source: AMsMyM5oK9MYI8mIo+EhF+H1NGRpmeDN3XTs1GMolX8M2ezSAV2Ua89sZ12ya0mBIXqqAy1a/ohl1A==
X-Received: by 2002:a17:902:ce85:b0:178:2402:1f7d with SMTP id
 f5-20020a170902ce8500b0017824021f7dmr10208022plg.81.1663964912148; 
 Fri, 23 Sep 2022 13:28:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 n8-20020a170902d2c800b00174d9bbeda4sm6514749plc.197.2022.09.23.13.28.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Sep 2022 13:28:28 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:14 -0700
Message-Id: <20220923202822.2667581-9-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1536; h=from:subject;
 bh=1k9cluqwH+m+5FA9iHjyZRl7ltBBZL1qz3WU+O4eJDg=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhbkkQMIyxW+p5Yq+8oZ2wcfayyBNx+y5dQbw2fi
 AE/i2oWJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W5AAKCRCJcvTf3G3AJs+QD/
 sFhRuVLRx0nMn49LZ3LgzAUGJu/OCv8HKw/plbSsv+vpxeMZ5Y4Z2yz+8pOjvg3cX6lD5EGOFnhfDh
 AkybvgBPzOD3UBEmc2+orSVNWeDOnYXG/2dyEL7KYashVN5HVyJ+SxZeRk177uhTjBzjbNRkAQ/SVs
 Oxp1fa8tJlAzSNr4khPvRqKxudlyHIfws9eHam1m+xu9Yx4IaRjlpv73TPFSCF3B4R61s5d9qdqmI6
 QtxsboSAw9VmMnwtQ92JY/zE3XF4HhRRzOwCGtrvQkJf7xWir9bHo5kODtv29MGnYSHOD7MNuLNHvy
 yT9yMlcMCSUI01Gqw83MyXuzCvvbGT8fRIxDuE0OLV8AuytMSMYtLLvmi8aqicaaH1P85zLrbxJ7VQ
 ibgpFBaDwYITAulUo26Uezs0cpbObE4vDsRPIMUwW8KNHI4PXEY3ej4CfYwEi05WAoQDnHjsKiI3mw
 NgRo1Knltm0LSiFomNDPAPC2bLhoNZ5ap0NV7jcfaCdq1s+e8i6UWoxTNuvUmvNZIO/WymKW5MaK0w
 VFLb8zJYoMtYLSQQRa1twKC/oiHyzfBWzmy0upGh1vD2LcXJMTsecq1f9iPUzq0AYRDLPe3zIIPTo5
 8qm3uJJ1hdyE1VeTF4mKkOhP+oujwwLKoB9fQmxF1d5+YH73zekSnLGtymEw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=9WHW9dcNJ7USo93XbepCTz52gEB8RJhZFTCAgOxjaWE=;
 b=MCrThrcpHBXTtrPTMUDahiOxJ8D8ml0adnc2b/ZnUpLhKCWbzkicjK7DVQ0Out5WOD
 FREFmdsJO4H0m9nZW5aGp3kZr8NyuDEg+cjmHSd2PFaU5B93FD7J4xKRdTkOt4VgUbKn
 UMInxMGoGT3uNhBnpORcuWbRNV0aijKsC637c=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=MCrThrcp
Subject: [Intel-wired-lan] [PATCH v2 08/16] dma-buf: Proactively round up to
 kmalloc bucket size
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
Cc: llvm@lists.linux.dev, dri-devel@lists.freedesktop.org, "Ruhl,
 Michael J" <michael.j.ruhl@intel.com>, Eric Dumazet <edumazet@google.com>,
 linux-hardening@vger.kernel.org, Hyeonggon Yoo <42.hyeyoo@gmail.com>,
 Christoph Lameter <cl@linux.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 dev@openvswitch.org, x86@kernel.org, intel-wired-lan@lists.osuosl.org,
 David Rientjes <rientjes@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 linux-media@vger.kernel.org, Marco Elver <elver@google.com>,
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Yonghong Song <yhs@fb.com>,
 David Sterba <dsterba@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Alex Elder <elder@kernel.org>, linux-mm@kvack.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, "David S. Miller" <davem@davemloft.net>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SW5zdGVhZCBvZiBkaXNjb3ZlcmluZyB0aGUga21hbGxvYyBidWNrZXQgc2l6ZSBfYWZ0ZXJfIGFs
bG9jYXRpb24sIHJvdW5kCnVwIHByb2FjdGl2ZWx5IHNvIHRoZSBhbGxvY2F0aW9uIGlzIGV4cGxp
Y2l0bHkgbWFkZSBmb3IgdGhlIGZ1bGwgc2l6ZSwKYWxsb3dpbmcgdGhlIGNvbXBpbGVyIHRvIGNv
cnJlY3RseSByZWFzb24gYWJvdXQgdGhlIHJlc3VsdGluZyBzaXplIG9mCnRoZSBidWZmZXIgdGhy
b3VnaCB0aGUgZXhpc3RpbmcgX19hbGxvY19zaXplKCkgaGludC4KCkNjOiBTdW1pdCBTZW13YWwg
PHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+CkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGRy
aS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpTaWduZWQtb2ZmLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4K
LS0tCiBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyB8IDkgKysrKysrKy0tCiAxIGZpbGUgY2hh
bmdlZCwgNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKaW5kZXgg
MjA1YWNiMmM3NDRkLi41YjBhNGI4ODMwZmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtcmVzdi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCkBAIC05OCwxMiArOTgs
MTcgQEAgc3RhdGljIHZvaWQgZG1hX3Jlc3ZfbGlzdF9zZXQoc3RydWN0IGRtYV9yZXN2X2xpc3Qg
Kmxpc3QsCiBzdGF0aWMgc3RydWN0IGRtYV9yZXN2X2xpc3QgKmRtYV9yZXN2X2xpc3RfYWxsb2Mo
dW5zaWduZWQgaW50IG1heF9mZW5jZXMpCiB7CiAJc3RydWN0IGRtYV9yZXN2X2xpc3QgKmxpc3Q7
CisJc2l6ZV90IHNpemU7CiAKLQlsaXN0ID0ga21hbGxvYyhzdHJ1Y3Rfc2l6ZShsaXN0LCB0YWJs
ZSwgbWF4X2ZlbmNlcyksIEdGUF9LRVJORUwpOworCS8qIFJvdW5kIHVwIHRvIHRoZSBuZXh0IGtt
YWxsb2MgYnVja2V0IHNpemUuICovCisJc2l6ZSA9IGttYWxsb2Nfc2l6ZV9yb3VuZHVwKHN0cnVj
dF9zaXplKGxpc3QsIHRhYmxlLCBtYXhfZmVuY2VzKSk7CisKKwlsaXN0ID0ga21hbGxvYyhzaXpl
LCBHRlBfS0VSTkVMKTsKIAlpZiAoIWxpc3QpCiAJCXJldHVybiBOVUxMOwogCi0JbGlzdC0+bWF4
X2ZlbmNlcyA9IChrc2l6ZShsaXN0KSAtIG9mZnNldG9mKHR5cGVvZigqbGlzdCksIHRhYmxlKSkg
LworCS8qIEdpdmVuIHRoZSByZXN1bHRpbmcgYnVja2V0IHNpemUsIHJlY2FsY3VsYXRlZCBtYXhf
ZmVuY2VzLiAqLworCWxpc3QtPm1heF9mZW5jZXMgPSAoc2l6ZSAtIG9mZnNldG9mKHR5cGVvZigq
bGlzdCksIHRhYmxlKSkgLwogCQlzaXplb2YoKmxpc3QtPnRhYmxlKTsKIAogCXJldHVybiBsaXN0
OwotLSAKMi4zNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
