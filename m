Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 508291DA0DF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 21:19:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 00EEC86E29;
	Tue, 19 May 2020 19:19:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yjUVrhH2jlL0; Tue, 19 May 2020 19:19:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2957986DF6;
	Tue, 19 May 2020 19:19:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0403D1BF383
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 08:58:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F286A86481
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 08:58:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZLV87Un_ApDx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 08:58:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7551F85FD0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 08:58:20 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id a5so1033575pjh.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 01:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Gp256sK97m0JlmQWSftnEsMRTRnXOEuscPxrD55dDJM=;
 b=YbntnIp8XQX//58M4ZjEMX8vezoiestRouSBjIwo2vFK0Bz2SpzWrLItvmFbNurKpw
 l+lSD/6ZkQTKvpP9txcQ9mdWwo5ev3Z9+soYyYK4XWyNdkG4MXajjDjGC0l20z0WMu6g
 efbvyAGsJKWrKnvbKsofTLt6z3ilinVr/rTOIKi5cUs1KFuVfjJwBRb0clGSOreed3zz
 6h6a6Op5vyRuhzfICewf1Q4D6fRaVf/sRH4K3y62n+NP5lbfNNxj5oAK+evX+1ygHOAe
 B9ia3FNtPQzgaQNcWjb6VICLOVNJbln2NpGkm3aawnznzAetMA+zNkKvhiYqv3cuW84q
 Yk6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Gp256sK97m0JlmQWSftnEsMRTRnXOEuscPxrD55dDJM=;
 b=jz0cH++IJQIY7hkQNCJ1AS61M6wJD+XWwBQfLsGzsFkqsZjC2Ms2z1R9Eh2W/d1vmC
 uBee/TVjIQXMHt3OwcGL0jhqac6gACFOIgs3Q0Q4mH0QgjeBaS2znz09+C8mUJgKnQcW
 MOKQRXLSyoJs5qzxVqcCPn5yMrpuicNNdv6Vq+u8ax2s2JRyljp7i87CUbgcfbkjVvRa
 CqYclY33ZB7bpESr0OwIENxOikQM5rIWWACLgGKQPgju3RDi2wrX5Bg+WWiD4xqjvqjn
 9gHwBeK2UBKyrU5Sb/N/IaSKyN2nJCenAHpmzkSYYEu696osgQLaLyC18EUi0/3nOHUh
 2wKQ==
X-Gm-Message-State: AOAM532ZqyI1/iz+/9H+1qjV7YBlk14m1TEaNaJ2oUra53LY3oudUyvT
 8HMahsSDhurCcLkrWiUGt68=
X-Google-Smtp-Source: ABdhPJzY9RetMR3dao6WLiQGBjWucTy8S+YatTZiLiNhfVf23Ysal70qZoXKhehaXEI2yixgtTqlsQ==
X-Received: by 2002:a17:90b:80f:: with SMTP id
 bk15mr4046170pjb.51.1589878699646; 
 Tue, 19 May 2020 01:58:19 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.45])
 by smtp.gmail.com with ESMTPSA id k18sm5765748pfg.217.2020.05.19.01.58.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 01:58:18 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: ast@kernel.org, daniel@iogearbox.net, davem@davemloft.net, kuba@kernel.org,
 hawk@kernel.org, john.fastabend@gmail.com, netdev@vger.kernel.org,
 bpf@vger.kernel.org, magnus.karlsson@intel.com, jonathan.lemon@gmail.com,
 jeffrey.t.kirsher@intel.com
Date: Tue, 19 May 2020 10:57:18 +0200
Message-Id: <20200519085724.294949-10-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200519085724.294949-1-bjorn.topel@gmail.com>
References: <20200519085724.294949-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 19 May 2020 19:19:18 +0000
Subject: [Intel-wired-lan] [PATCH bpf-next v3 09/15] ice,
 xsk: migrate to new MEM_TYPE_XSK_BUFF_POOL
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
Cc: maximmi@mellanox.com,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 maciej.fijalkowski@intel.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKUmVtb3ZlIE1FTV9U
WVBFX1pFUk9fQ09QWSBpbiBmYXZvciBvZiB0aGUgbmV3IE1FTV9UWVBFX1hTS19CVUZGX1BPT0wK
QVBJcy4KCkNjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZwpTaWduZWQtb2ZmLWJ5
OiBNYWNpZWogRmlqYWxrb3dza2kgPG1hY2llai5maWphbGtvd3NraUBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Jhc2UuYyB8ICAxNiArLQogZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmggfCAgIDggKy0KIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmMgIHwgMzc0ICsrKy0tLS0tLS0tLS0tLS0tLS0tLS0K
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmggIHwgIDEzICstCiA0IGZp
bGVzIGNoYW5nZWQsIDU0IGluc2VydGlvbnMoKyksIDM1NyBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Jhc2UuYyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfYmFzZS5jCmluZGV4IGExOWNkNmY1NDM2Yi4uNDMz
ZWI3MmIxYzg1IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2Jhc2UuYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Jhc2UuYwpA
QCAtMSw2ICsxLDcgQEAKIC8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCiAvKiBD
b3B5cmlnaHQgKGMpIDIwMTksIEludGVsIENvcnBvcmF0aW9uLiAqLwogCisjaW5jbHVkZSA8bmV0
L3hkcF9zb2NrX2Rydi5oPgogI2luY2x1ZGUgImljZV9iYXNlLmgiCiAjaW5jbHVkZSAiaWNlX2Rj
Yl9saWIuaCIKIApAQCAtMzA4LDI0ICszMDksMjMgQEAgaW50IGljZV9zZXR1cF9yeF9jdHgoc3Ry
dWN0IGljZV9yaW5nICpyaW5nKQogCQlpZiAocmluZy0+eHNrX3VtZW0pIHsKIAkJCXhkcF9yeHFf
aW5mb191bnJlZ19tZW1fbW9kZWwoJnJpbmctPnhkcF9yeHEpOwogCi0JCQlyaW5nLT5yeF9idWZf
bGVuID0gcmluZy0+eHNrX3VtZW0tPmNodW5rX3NpemVfbm9ociAtCi0JCQkJCSAgIFhEUF9QQUNL
RVRfSEVBRFJPT007CisJCQlyaW5nLT5yeF9idWZfbGVuID0KKwkJCQl4c2tfdW1lbV9nZXRfcnhf
ZnJhbWVfc2l6ZShyaW5nLT54c2tfdW1lbSk7CiAJCQkvKiBGb3IgQUZfWERQIFpDLCB3ZSBkaXNh
bGxvdyBwYWNrZXRzIHRvIHNwYW4gb24KIAkJCSAqIG11bHRpcGxlIGJ1ZmZlcnMsIHRodXMgbGV0
dGluZyB1cyBza2lwIHRoYXQKIAkJCSAqIGhhbmRsaW5nIGluIHRoZSBmYXN0LXBhdGguCiAJCQkg
Ki8KIAkJCWNoYWluX2xlbiA9IDE7Ci0JCQlyaW5nLT56Y2EuZnJlZSA9IGljZV96Y2FfZnJlZTsK
IAkJCWVyciA9IHhkcF9yeHFfaW5mb19yZWdfbWVtX21vZGVsKCZyaW5nLT54ZHBfcnhxLAotCQkJ
CQkJCSBNRU1fVFlQRV9aRVJPX0NPUFksCi0JCQkJCQkJICZyaW5nLT56Y2EpOworCQkJCQkJCSBN
RU1fVFlQRV9YU0tfQlVGRl9QT09MLAorCQkJCQkJCSBOVUxMKTsKIAkJCWlmIChlcnIpCiAJCQkJ
cmV0dXJuIGVycjsKKwkJCXhza19idWZmX3NldF9yeHFfaW5mbyhyaW5nLT54c2tfdW1lbSwgJnJp
bmctPnhkcF9yeHEpOwogCi0JCQlkZXZfaW5mbyhpY2VfcGZfdG9fZGV2KHZzaS0+YmFjayksICJS
ZWdpc3RlcmVkIFhEUCBtZW0gbW9kZWwgTUVNX1RZUEVfWkVST19DT1BZIG9uIFJ4IHJpbmcgJWRc
biIsCisJCQlkZXZfaW5mbyhpY2VfcGZfdG9fZGV2KHZzaS0+YmFjayksICJSZWdpc3RlcmVkIFhE
UCBtZW0gbW9kZWwgTUVNX1RZUEVfWFNLX0JVRkZfUE9PTCBvbiBSeCByaW5nICVkXG4iLAogCQkJ
CSByaW5nLT5xX2luZGV4KTsKIAkJfSBlbHNlIHsKLQkJCXJpbmctPnpjYS5mcmVlID0gTlVMTDsK
IAkJCWlmICgheGRwX3J4cV9pbmZvX2lzX3JlZygmcmluZy0+eGRwX3J4cSkpCiAJCQkJLyogY292
ZXJpdHlbY2hlY2tfcmV0dXJuXSAqLwogCQkJCXhkcF9yeHFfaW5mb19yZWcoJnJpbmctPnhkcF9y
eHEsCkBAIC00MjYsNyArNDI2LDcgQEAgaW50IGljZV9zZXR1cF9yeF9jdHgoc3RydWN0IGljZV9y
aW5nICpyaW5nKQogCXdyaXRlbCgwLCByaW5nLT50YWlsKTsKIAogCWVyciA9IHJpbmctPnhza191
bWVtID8KLQkgICAgICBpY2VfYWxsb2NfcnhfYnVmc19zbG93X3pjKHJpbmcsIElDRV9ERVNDX1VO
VVNFRChyaW5nKSkgOgorCSAgICAgIGljZV9hbGxvY19yeF9idWZzX3pjKHJpbmcsIElDRV9ERVND
X1VOVVNFRChyaW5nKSkgOgogCSAgICAgIGljZV9hbGxvY19yeF9idWZzKHJpbmcsIElDRV9ERVND
X1VOVVNFRChyaW5nKSk7CiAJaWYgKGVycikKIAkJZGV2X2luZm8oaWNlX3BmX3RvX2Rldih2c2kt
PmJhY2spLCAiRmFpbGVkIGFsbG9jYXRlIHNvbWUgYnVmZmVycyBvbiAlc1J4IHJpbmcgJWQgKHBm
X3EgJWQpXG4iLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV90eHJ4LmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguaAppbmRl
eCA3ZWUwMGExMjg2NjMuLmQwZmQyMTczODU0ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmgKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV90eHJ4LmgKQEAgLTE1NSwxNyArMTU1LDE2IEBAIHN0cnVjdCBpY2VfdHhfb2Zm
bG9hZF9wYXJhbXMgewogfTsKIAogc3RydWN0IGljZV9yeF9idWYgewotCXN0cnVjdCBza19idWZm
ICpza2I7Ci0JZG1hX2FkZHJfdCBkbWE7CiAJdW5pb24gewogCQlzdHJ1Y3QgeworCQkJc3RydWN0
IHNrX2J1ZmYgKnNrYjsKKwkJCWRtYV9hZGRyX3QgZG1hOwogCQkJc3RydWN0IHBhZ2UgKnBhZ2U7
CiAJCQl1bnNpZ25lZCBpbnQgcGFnZV9vZmZzZXQ7CiAJCQl1MTYgcGFnZWNudF9iaWFzOwogCQl9
OwogCQlzdHJ1Y3QgewotCQkJdm9pZCAqYWRkcjsKLQkJCXU2NCBoYW5kbGU7CisJCQlzdHJ1Y3Qg
eGRwX2J1ZmYgKnhkcDsKIAkJfTsKIAl9OwogfTsKQEAgLTI4OSw3ICsyODgsNiBAQCBzdHJ1Y3Qg
aWNlX3JpbmcgewogCXN0cnVjdCByY3VfaGVhZCByY3U7CQkvKiB0byBhdm9pZCByYWNlIG9uIGZy
ZWUgKi8KIAlzdHJ1Y3QgYnBmX3Byb2cgKnhkcF9wcm9nOwogCXN0cnVjdCB4ZHBfdW1lbSAqeHNr
X3VtZW07Ci0Jc3RydWN0IHplcm9fY29weV9hbGxvY2F0b3IgemNhOwogCS8qIENMMyAtIDNyZCBj
YWNoZWxpbmUgc3RhcnRzIGhlcmUgKi8KIAlzdHJ1Y3QgeGRwX3J4cV9pbmZvIHhkcF9yeHE7CiAJ
LyogQ0xYIC0gdGhlIGJlbG93IGl0ZW1zIGFyZSBvbmx5IGFjY2Vzc2VkIGluZnJlcXVlbnRseSBh
bmQgc2hvdWxkIGJlCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3hzay5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV94c2suYwppbmRl
eCA3MGUyMDQzMDdhOTMuLmRhODk1ODljMzEzNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV94c2suYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX3hzay5jCkBAIC0yNzksMjggKzI3OSw2IEBAIHN0YXRpYyBpbnQgaWNlX3hza19h
bGxvY191bWVtcyhzdHJ1Y3QgaWNlX3ZzaSAqdnNpKQogCXJldHVybiAwOwogfQogCi0vKioKLSAq
IGljZV94c2tfYWRkX3VtZW0gLSBhZGQgYSBVTUVNIHJlZ2lvbiBmb3IgWERQIHNvY2tldHMKLSAq
IEB2c2k6IFZTSSB0byB3aGljaCB0aGUgVU1FTSB3aWxsIGJlIGFkZGVkCi0gKiBAdW1lbTogcG9p
bnRlciB0byBhIHJlcXVlc3RlZCBVTUVNIHJlZ2lvbgotICogQHFpZDogcXVldWUgSUQKLSAqCi0g
KiBSZXR1cm5zIDAgb24gc3VjY2VzcywgbmVnYXRpdmUgb24gZXJyb3IKLSAqLwotc3RhdGljIGlu
dCBpY2VfeHNrX2FkZF91bWVtKHN0cnVjdCBpY2VfdnNpICp2c2ksIHN0cnVjdCB4ZHBfdW1lbSAq
dW1lbSwgdTE2IHFpZCkKLXsKLQlpbnQgZXJyOwotCi0JZXJyID0gaWNlX3hza19hbGxvY191bWVt
cyh2c2kpOwotCWlmIChlcnIpCi0JCXJldHVybiBlcnI7Ci0KLQl2c2ktPnhza191bWVtc1txaWRd
ID0gdW1lbTsKLQl2c2ktPm51bV94c2tfdW1lbXNfdXNlZCsrOwotCi0JcmV0dXJuIDA7Ci19Ci0K
IC8qKgogICogaWNlX3hza19yZW1vdmVfdW1lbSAtIFJlbW92ZSBhbiBVTUVNIGZvciBhIGNlcnRh
aW4gcmluZy9xaWQKICAqIEB2c2k6IFZTSSBmcm9tIHdoaWNoIHRoZSBWU0kgd2lsbCBiZSByZW1v
dmVkCkBAIC0zMTgsNjUgKzI5Niw2IEBAIHN0YXRpYyB2b2lkIGljZV94c2tfcmVtb3ZlX3VtZW0o
c3RydWN0IGljZV92c2kgKnZzaSwgdTE2IHFpZCkKIAl9CiB9CiAKLS8qKgotICogaWNlX3hza191
bWVtX2RtYV9tYXAgLSBETUEgbWFwIFVNRU0gcmVnaW9uIGZvciBYRFAgc29ja2V0cwotICogQHZz
aTogVlNJIHRvIG1hcCB0aGUgVU1FTSByZWdpb24KLSAqIEB1bWVtOiBVTUVNIHRvIG1hcAotICoK
LSAqIFJldHVybnMgMCBvbiBzdWNjZXNzLCBuZWdhdGl2ZSBvbiBlcnJvcgotICovCi1zdGF0aWMg
aW50IGljZV94c2tfdW1lbV9kbWFfbWFwKHN0cnVjdCBpY2VfdnNpICp2c2ksIHN0cnVjdCB4ZHBf
dW1lbSAqdW1lbSkKLXsKLQlzdHJ1Y3QgaWNlX3BmICpwZiA9IHZzaS0+YmFjazsKLQlzdHJ1Y3Qg
ZGV2aWNlICpkZXY7Ci0JdW5zaWduZWQgaW50IGk7Ci0KLQlkZXYgPSBpY2VfcGZfdG9fZGV2KHBm
KTsKLQlmb3IgKGkgPSAwOyBpIDwgdW1lbS0+bnBnczsgaSsrKSB7Ci0JCWRtYV9hZGRyX3QgZG1h
ID0gZG1hX21hcF9wYWdlX2F0dHJzKGRldiwgdW1lbS0+cGdzW2ldLCAwLAotCQkJCQkJICAgIFBB
R0VfU0laRSwKLQkJCQkJCSAgICBETUFfQklESVJFQ1RJT05BTCwKLQkJCQkJCSAgICBJQ0VfUlhf
RE1BX0FUVFIpOwotCQlpZiAoZG1hX21hcHBpbmdfZXJyb3IoZGV2LCBkbWEpKSB7Ci0JCQlkZXZf
ZGJnKGRldiwgIlhTSyBVTUVNIERNQSBtYXBwaW5nIGVycm9yIG9uIHBhZ2UgbnVtICVkXG4iLAot
CQkJCWkpOwotCQkJZ290byBvdXRfdW5tYXA7Ci0JCX0KLQotCQl1bWVtLT5wYWdlc1tpXS5kbWEg
PSBkbWE7Ci0JfQotCi0JcmV0dXJuIDA7Ci0KLW91dF91bm1hcDoKLQlmb3IgKDsgaSA+IDA7IGkt
LSkgewotCQlkbWFfdW5tYXBfcGFnZV9hdHRycyhkZXYsIHVtZW0tPnBhZ2VzW2ldLmRtYSwgUEFH
RV9TSVpFLAotCQkJCSAgICAgRE1BX0JJRElSRUNUSU9OQUwsIElDRV9SWF9ETUFfQVRUUik7Ci0J
CXVtZW0tPnBhZ2VzW2ldLmRtYSA9IDA7Ci0JfQotCi0JcmV0dXJuIC1FRkFVTFQ7Ci19Ci0KLS8q
KgotICogaWNlX3hza191bWVtX2RtYV91bm1hcCAtIERNQSB1bm1hcCBVTUVNIHJlZ2lvbiBmb3Ig
WERQIHNvY2tldHMKLSAqIEB2c2k6IFZTSSBmcm9tIHdoaWNoIHRoZSBVTUVNIHdpbGwgYmUgdW5t
YXBwZWQKLSAqIEB1bWVtOiBVTUVNIHRvIHVubWFwCi0gKi8KLXN0YXRpYyB2b2lkIGljZV94c2tf
dW1lbV9kbWFfdW5tYXAoc3RydWN0IGljZV92c2kgKnZzaSwgc3RydWN0IHhkcF91bWVtICp1bWVt
KQotewotCXN0cnVjdCBpY2VfcGYgKnBmID0gdnNpLT5iYWNrOwotCXN0cnVjdCBkZXZpY2UgKmRl
djsKLQl1bnNpZ25lZCBpbnQgaTsKLQotCWRldiA9IGljZV9wZl90b19kZXYocGYpOwotCWZvciAo
aSA9IDA7IGkgPCB1bWVtLT5ucGdzOyBpKyspIHsKLQkJZG1hX3VubWFwX3BhZ2VfYXR0cnMoZGV2
LCB1bWVtLT5wYWdlc1tpXS5kbWEsIFBBR0VfU0laRSwKLQkJCQkgICAgIERNQV9CSURJUkVDVElP
TkFMLCBJQ0VfUlhfRE1BX0FUVFIpOwotCi0JCXVtZW0tPnBhZ2VzW2ldLmRtYSA9IDA7Ci0JfQot
fQogCiAvKioKICAqIGljZV94c2tfdW1lbV9kaXNhYmxlIC0gZGlzYWJsZSBhIFVNRU0gcmVnaW9u
CkBAIC0zOTEsNyArMzEwLDcgQEAgc3RhdGljIGludCBpY2VfeHNrX3VtZW1fZGlzYWJsZShzdHJ1
Y3QgaWNlX3ZzaSAqdnNpLCB1MTYgcWlkKQogCSAgICAhdnNpLT54c2tfdW1lbXNbcWlkXSkKIAkJ
cmV0dXJuIC1FSU5WQUw7CiAKLQlpY2VfeHNrX3VtZW1fZG1hX3VubWFwKHZzaSwgdnNpLT54c2tf
dW1lbXNbcWlkXSk7CisJeHNrX2J1ZmZfZG1hX3VubWFwKHZzaS0+eHNrX3VtZW1zW3FpZF0sIElD
RV9SWF9ETUFfQVRUUik7CiAJaWNlX3hza19yZW1vdmVfdW1lbSh2c2ksIHFpZCk7CiAKIAlyZXR1
cm4gMDsKQEAgLTQwOCw3ICszMjcsNiBAQCBzdGF0aWMgaW50IGljZV94c2tfdW1lbV9kaXNhYmxl
KHN0cnVjdCBpY2VfdnNpICp2c2ksIHUxNiBxaWQpCiBzdGF0aWMgaW50CiBpY2VfeHNrX3VtZW1f
ZW5hYmxlKHN0cnVjdCBpY2VfdnNpICp2c2ksIHN0cnVjdCB4ZHBfdW1lbSAqdW1lbSwgdTE2IHFp
ZCkKIHsKLQlzdHJ1Y3QgeGRwX3VtZW1fZnFfcmV1c2UgKnJldXNlcTsKIAlpbnQgZXJyOwogCiAJ
aWYgKHZzaS0+dHlwZSAhPSBJQ0VfVlNJX1BGKQpAQCAtNDE5LDIwICszMzcsMTggQEAgaWNlX3hz
a191bWVtX2VuYWJsZShzdHJ1Y3QgaWNlX3ZzaSAqdnNpLCBzdHJ1Y3QgeGRwX3VtZW0gKnVtZW0s
IHUxNiBxaWQpCiAJaWYgKHFpZCA+PSB2c2ktPm51bV94c2tfdW1lbXMpCiAJCXJldHVybiAtRUlO
VkFMOwogCisJZXJyID0gaWNlX3hza19hbGxvY191bWVtcyh2c2kpOworCWlmIChlcnIpCisJCXJl
dHVybiBlcnI7CisKIAlpZiAodnNpLT54c2tfdW1lbXMgJiYgdnNpLT54c2tfdW1lbXNbcWlkXSkK
IAkJcmV0dXJuIC1FQlVTWTsKIAotCXJldXNlcSA9IHhza19yZXVzZXFfcHJlcGFyZSh2c2ktPnJ4
X3JpbmdzWzBdLT5jb3VudCk7Ci0JaWYgKCFyZXVzZXEpCi0JCXJldHVybiAtRU5PTUVNOwotCi0J
eHNrX3JldXNlcV9mcmVlKHhza19yZXVzZXFfc3dhcCh1bWVtLCByZXVzZXEpKTsKLQotCWVyciA9
IGljZV94c2tfdW1lbV9kbWFfbWFwKHZzaSwgdW1lbSk7Ci0JaWYgKGVycikKLQkJcmV0dXJuIGVy
cjsKKwl2c2ktPnhza191bWVtc1txaWRdID0gdW1lbTsKKwl2c2ktPm51bV94c2tfdW1lbXNfdXNl
ZCsrOwogCi0JZXJyID0gaWNlX3hza19hZGRfdW1lbSh2c2ksIHVtZW0sIHFpZCk7CisJZXJyID0g
eHNrX2J1ZmZfZG1hX21hcCh2c2ktPnhza191bWVtc1txaWRdLCBpY2VfcGZfdG9fZGV2KHZzaS0+
YmFjayksCisJCQkgICAgICAgSUNFX1JYX0RNQV9BVFRSKTsKIAlpZiAoZXJyKQogCQlyZXR1cm4g
ZXJyOwogCkBAIC00ODMsMTE5ICszOTksNiBAQCBpbnQgaWNlX3hza191bWVtX3NldHVwKHN0cnVj
dCBpY2VfdnNpICp2c2ksIHN0cnVjdCB4ZHBfdW1lbSAqdW1lbSwgdTE2IHFpZCkKIAlyZXR1cm4g
cmV0OwogfQogCi0vKioKLSAqIGljZV96Y2FfZnJlZSAtIENhbGxiYWNrIGZvciBNRU1fVFlQRV9a
RVJPX0NPUFkgYWxsb2NhdGlvbnMKLSAqIEB6Y2E6IHplcm8tY3BveSBhbGxvY2F0b3IKLSAqIEBo
YW5kbGU6IEJ1ZmZlciBoYW5kbGUKLSAqLwotdm9pZCBpY2VfemNhX2ZyZWUoc3RydWN0IHplcm9f
Y29weV9hbGxvY2F0b3IgKnpjYSwgdW5zaWduZWQgbG9uZyBoYW5kbGUpCi17Ci0Jc3RydWN0IGlj
ZV9yeF9idWYgKnJ4X2J1ZjsKLQlzdHJ1Y3QgaWNlX3JpbmcgKnJ4X3Jpbmc7Ci0Jc3RydWN0IHhk
cF91bWVtICp1bWVtOwotCXU2NCBociwgbWFzazsKLQl1MTYgbnRhOwotCi0JcnhfcmluZyA9IGNv
bnRhaW5lcl9vZih6Y2EsIHN0cnVjdCBpY2VfcmluZywgemNhKTsKLQl1bWVtID0gcnhfcmluZy0+
eHNrX3VtZW07Ci0JaHIgPSB1bWVtLT5oZWFkcm9vbSArIFhEUF9QQUNLRVRfSEVBRFJPT007Ci0K
LQltYXNrID0gdW1lbS0+Y2h1bmtfbWFzazsKLQotCW50YSA9IHJ4X3JpbmctPm5leHRfdG9fYWxs
b2M7Ci0JcnhfYnVmID0gJnJ4X3JpbmctPnJ4X2J1ZltudGFdOwotCi0JbnRhKys7Ci0Jcnhfcmlu
Zy0+bmV4dF90b19hbGxvYyA9IChudGEgPCByeF9yaW5nLT5jb3VudCkgPyBudGEgOiAwOwotCi0J
aGFuZGxlICY9IG1hc2s7Ci0KLQlyeF9idWYtPmRtYSA9IHhkcF91bWVtX2dldF9kbWEodW1lbSwg
aGFuZGxlKTsKLQlyeF9idWYtPmRtYSArPSBocjsKLQotCXJ4X2J1Zi0+YWRkciA9IHhkcF91bWVt
X2dldF9kYXRhKHVtZW0sIGhhbmRsZSk7Ci0JcnhfYnVmLT5hZGRyICs9IGhyOwotCi0JcnhfYnVm
LT5oYW5kbGUgPSAodTY0KWhhbmRsZSArIHVtZW0tPmhlYWRyb29tOwotfQotCi0vKioKLSAqIGlj
ZV9hbGxvY19idWZfZmFzdF96YyAtIFJldHJpZXZlIGJ1ZmZlciBhZGRyZXNzIGZyb20gWERQIHVt
ZW0KLSAqIEByeF9yaW5nOiByaW5nIHdpdGggYW4geGRwX3VtZW0gYm91bmQgdG8gaXQKLSAqIEBy
eF9idWY6IGJ1ZmZlciB0byB3aGljaCB4c2sgcGFnZSBhZGRyZXNzIHdpbGwgYmUgYXNzaWduZWQK
LSAqCi0gKiBUaGlzIGZ1bmN0aW9uIGFsbG9jYXRlcyBhbiBSeCBidWZmZXIgaW4gdGhlIGhvdCBw
YXRoLgotICogVGhlIGJ1ZmZlciBjYW4gY29tZSBmcm9tIGZpbGwgcXVldWUgb3IgcmVjeWNsZSBx
dWV1ZS4KLSAqCi0gKiBSZXR1cm5zIHRydWUgaWYgYW4gYXNzaWdubWVudCB3YXMgc3VjY2Vzc2Z1
bCwgZmFsc2UgaWYgbm90LgotICovCi1zdGF0aWMgX19hbHdheXNfaW5saW5lIGJvb2wKLWljZV9h
bGxvY19idWZfZmFzdF96YyhzdHJ1Y3QgaWNlX3JpbmcgKnJ4X3JpbmcsIHN0cnVjdCBpY2Vfcnhf
YnVmICpyeF9idWYpCi17Ci0Jc3RydWN0IHhkcF91bWVtICp1bWVtID0gcnhfcmluZy0+eHNrX3Vt
ZW07Ci0Jdm9pZCAqYWRkciA9IHJ4X2J1Zi0+YWRkcjsKLQl1NjQgaGFuZGxlLCBocjsKLQotCWlm
IChhZGRyKSB7Ci0JCXJ4X3JpbmctPnJ4X3N0YXRzLnBhZ2VfcmV1c2VfY291bnQrKzsKLQkJcmV0
dXJuIHRydWU7Ci0JfQotCi0JaWYgKCF4c2tfdW1lbV9wZWVrX2FkZHIodW1lbSwgJmhhbmRsZSkp
IHsKLQkJcnhfcmluZy0+cnhfc3RhdHMuYWxsb2NfcGFnZV9mYWlsZWQrKzsKLQkJcmV0dXJuIGZh
bHNlOwotCX0KLQotCWhyID0gdW1lbS0+aGVhZHJvb20gKyBYRFBfUEFDS0VUX0hFQURST09NOwot
Ci0JcnhfYnVmLT5kbWEgPSB4ZHBfdW1lbV9nZXRfZG1hKHVtZW0sIGhhbmRsZSk7Ci0JcnhfYnVm
LT5kbWEgKz0gaHI7Ci0KLQlyeF9idWYtPmFkZHIgPSB4ZHBfdW1lbV9nZXRfZGF0YSh1bWVtLCBo
YW5kbGUpOwotCXJ4X2J1Zi0+YWRkciArPSBocjsKLQotCXJ4X2J1Zi0+aGFuZGxlID0gaGFuZGxl
ICsgdW1lbS0+aGVhZHJvb207Ci0KLQl4c2tfdW1lbV9yZWxlYXNlX2FkZHIodW1lbSk7Ci0JcmV0
dXJuIHRydWU7Ci19Ci0KLS8qKgotICogaWNlX2FsbG9jX2J1Zl9zbG93X3pjIC0gUmV0cmlldmUg
YnVmZmVyIGFkZHJlc3MgZnJvbSBYRFAgdW1lbQotICogQHJ4X3Jpbmc6IHJpbmcgd2l0aCBhbiB4
ZHBfdW1lbSBib3VuZCB0byBpdAotICogQHJ4X2J1ZjogYnVmZmVyIHRvIHdoaWNoIHhzayBwYWdl
IGFkZHJlc3Mgd2lsbCBiZSBhc3NpZ25lZAotICoKLSAqIFRoaXMgZnVuY3Rpb24gYWxsb2NhdGVz
IGFuIFJ4IGJ1ZmZlciBpbiB0aGUgc2xvdyBwYXRoLgotICogVGhlIGJ1ZmZlciBjYW4gY29tZSBm
cm9tIGZpbGwgcXVldWUgb3IgcmVjeWNsZSBxdWV1ZS4KLSAqCi0gKiBSZXR1cm5zIHRydWUgaWYg
YW4gYXNzaWdubWVudCB3YXMgc3VjY2Vzc2Z1bCwgZmFsc2UgaWYgbm90LgotICovCi1zdGF0aWMg
X19hbHdheXNfaW5saW5lIGJvb2wKLWljZV9hbGxvY19idWZfc2xvd196YyhzdHJ1Y3QgaWNlX3Jp
bmcgKnJ4X3JpbmcsIHN0cnVjdCBpY2VfcnhfYnVmICpyeF9idWYpCi17Ci0Jc3RydWN0IHhkcF91
bWVtICp1bWVtID0gcnhfcmluZy0+eHNrX3VtZW07Ci0JdTY0IGhhbmRsZSwgaGVhZHJvb207Ci0K
LQlpZiAoIXhza191bWVtX3BlZWtfYWRkcl9ycSh1bWVtLCAmaGFuZGxlKSkgewotCQlyeF9yaW5n
LT5yeF9zdGF0cy5hbGxvY19wYWdlX2ZhaWxlZCsrOwotCQlyZXR1cm4gZmFsc2U7Ci0JfQotCi0J
aGFuZGxlICY9IHVtZW0tPmNodW5rX21hc2s7Ci0JaGVhZHJvb20gPSB1bWVtLT5oZWFkcm9vbSAr
IFhEUF9QQUNLRVRfSEVBRFJPT007Ci0KLQlyeF9idWYtPmRtYSA9IHhkcF91bWVtX2dldF9kbWEo
dW1lbSwgaGFuZGxlKTsKLQlyeF9idWYtPmRtYSArPSBoZWFkcm9vbTsKLQotCXJ4X2J1Zi0+YWRk
ciA9IHhkcF91bWVtX2dldF9kYXRhKHVtZW0sIGhhbmRsZSk7Ci0JcnhfYnVmLT5hZGRyICs9IGhl
YWRyb29tOwotCi0JcnhfYnVmLT5oYW5kbGUgPSBoYW5kbGUgKyB1bWVtLT5oZWFkcm9vbTsKLQot
CXhza191bWVtX3JlbGVhc2VfYWRkcl9ycSh1bWVtKTsKLQlyZXR1cm4gdHJ1ZTsKLX0KLQogLyoq
CiAgKiBpY2VfYWxsb2NfcnhfYnVmc196YyAtIGFsbG9jYXRlIGEgbnVtYmVyIG9mIFJ4IGJ1ZmZl
cnMKICAqIEByeF9yaW5nOiBSeCByaW5nCkBAIC02MDcsMTQgKzQxMCwxMyBAQCBpY2VfYWxsb2Nf
YnVmX3Nsb3dfemMoc3RydWN0IGljZV9yaW5nICpyeF9yaW5nLCBzdHJ1Y3QgaWNlX3J4X2J1ZiAq
cnhfYnVmKQogICoKICAqIFJldHVybnMgZmFsc2UgaWYgYWxsIGFsbG9jYXRpb25zIHdlcmUgc3Vj
Y2Vzc2Z1bCwgdHJ1ZSBpZiBhbnkgZmFpbC4KICAqLwotc3RhdGljIGJvb2wKLWljZV9hbGxvY19y
eF9idWZzX3pjKHN0cnVjdCBpY2VfcmluZyAqcnhfcmluZywgaW50IGNvdW50LAotCQkgICAgIGJv
b2wgKCphbGxvYykoc3RydWN0IGljZV9yaW5nICosIHN0cnVjdCBpY2VfcnhfYnVmICopKQorYm9v
bCBpY2VfYWxsb2NfcnhfYnVmc196YyhzdHJ1Y3QgaWNlX3JpbmcgKnJ4X3JpbmcsIHUxNiBjb3Vu
dCkKIHsKIAl1bmlvbiBpY2VfMzJiX3J4X2ZsZXhfZGVzYyAqcnhfZGVzYzsKIAl1MTYgbnR1ID0g
cnhfcmluZy0+bmV4dF90b191c2U7CiAJc3RydWN0IGljZV9yeF9idWYgKnJ4X2J1ZjsKIAlib29s
IHJldCA9IGZhbHNlOworCWRtYV9hZGRyX3QgZG1hOwogCiAJaWYgKCFjb3VudCkKIAkJcmV0dXJu
IGZhbHNlOwpAQCAtNjIzLDE2ICs0MjUsMTQgQEAgaWNlX2FsbG9jX3J4X2J1ZnNfemMoc3RydWN0
IGljZV9yaW5nICpyeF9yaW5nLCBpbnQgY291bnQsCiAJcnhfYnVmID0gJnJ4X3JpbmctPnJ4X2J1
ZltudHVdOwogCiAJZG8gewotCQlpZiAoIWFsbG9jKHJ4X3JpbmcsIHJ4X2J1ZikpIHsKKwkJcnhf
YnVmLT54ZHAgPSB4c2tfYnVmZl9hbGxvYyhyeF9yaW5nLT54c2tfdW1lbSk7CisJCWlmICghcnhf
YnVmLT54ZHApIHsKIAkJCXJldCA9IHRydWU7CiAJCQlicmVhazsKIAkJfQogCi0JCWRtYV9zeW5j
X3NpbmdsZV9yYW5nZV9mb3JfZGV2aWNlKHJ4X3JpbmctPmRldiwgcnhfYnVmLT5kbWEsIDAsCi0J
CQkJCQkgcnhfcmluZy0+cnhfYnVmX2xlbiwKLQkJCQkJCSBETUFfQklESVJFQ1RJT05BTCk7Ci0K
LQkJcnhfZGVzYy0+cmVhZC5wa3RfYWRkciA9IGNwdV90b19sZTY0KHJ4X2J1Zi0+ZG1hKTsKKwkJ
ZG1hID0geHNrX2J1ZmZfeGRwX2dldF9kbWEocnhfYnVmLT54ZHApOworCQlyeF9kZXNjLT5yZWFk
LnBrdF9hZGRyID0gY3B1X3RvX2xlNjQoZG1hKTsKIAkJcnhfZGVzYy0+d2Iuc3RhdHVzX2Vycm9y
MCA9IDA7CiAKIAkJcnhfZGVzYysrOwpAQCAtNjUyLDMyICs0NTIsNiBAQCBpY2VfYWxsb2Nfcnhf
YnVmc196YyhzdHJ1Y3QgaWNlX3JpbmcgKnJ4X3JpbmcsIGludCBjb3VudCwKIAlyZXR1cm4gcmV0
OwogfQogCi0vKioKLSAqIGljZV9hbGxvY19yeF9idWZzX2Zhc3RfemMgLSBhbGxvY2F0ZSB6ZXJv
IGNvcHkgYnVmcyBpbiB0aGUgaG90IHBhdGgKLSAqIEByeF9yaW5nOiBSeCByaW5nCi0gKiBAY291
bnQ6IG51bWJlciBvZiBidWZzIHRvIGFsbG9jYXRlCi0gKgotICogUmV0dXJucyBmYWxzZSBvbiBz
dWNjZXNzLCB0cnVlIG9uIGZhaWx1cmUuCi0gKi8KLXN0YXRpYyBib29sIGljZV9hbGxvY19yeF9i
dWZzX2Zhc3RfemMoc3RydWN0IGljZV9yaW5nICpyeF9yaW5nLCB1MTYgY291bnQpCi17Ci0JcmV0
dXJuIGljZV9hbGxvY19yeF9idWZzX3pjKHJ4X3JpbmcsIGNvdW50LAotCQkJCSAgICBpY2VfYWxs
b2NfYnVmX2Zhc3RfemMpOwotfQotCi0vKioKLSAqIGljZV9hbGxvY19yeF9idWZzX3Nsb3dfemMg
LSBhbGxvY2F0ZSB6ZXJvIGNvcHkgYnVmcyBpbiB0aGUgc2xvdyBwYXRoCi0gKiBAcnhfcmluZzog
UnggcmluZwotICogQGNvdW50OiBudW1iZXIgb2YgYnVmcyB0byBhbGxvY2F0ZQotICoKLSAqIFJl
dHVybnMgZmFsc2Ugb24gc3VjY2VzcywgdHJ1ZSBvbiBmYWlsdXJlLgotICovCi1ib29sIGljZV9h
bGxvY19yeF9idWZzX3Nsb3dfemMoc3RydWN0IGljZV9yaW5nICpyeF9yaW5nLCB1MTYgY291bnQp
Ci17Ci0JcmV0dXJuIGljZV9hbGxvY19yeF9idWZzX3pjKHJ4X3JpbmcsIGNvdW50LAotCQkJCSAg
ICBpY2VfYWxsb2NfYnVmX3Nsb3dfemMpOwotfQotCiAvKioKICAqIGljZV9idW1wX250YyAtIEJ1
bXAgdGhlIG5leHRfdG9fY2xlYW4gY291bnRlciBvZiBhbiBSeCByaW5nCiAgKiBAcnhfcmluZzog
UnggcmluZwpAQCAtNjkxLDU5ICs0NjUsNiBAQCBzdGF0aWMgdm9pZCBpY2VfYnVtcF9udGMoc3Ry
dWN0IGljZV9yaW5nICpyeF9yaW5nKQogCXByZWZldGNoKElDRV9SWF9ERVNDKHJ4X3JpbmcsIG50
YykpOwogfQogCi0vKioKLSAqIGljZV9nZXRfcnhfYnVmX3pjIC0gRmV0Y2ggdGhlIGN1cnJlbnQg
UnggYnVmZmVyCi0gKiBAcnhfcmluZzogUnggcmluZwotICogQHNpemU6IHNpemUgb2YgYSBidWZm
ZXIKLSAqCi0gKiBUaGlzIGZ1bmN0aW9uIHJldHVybnMgdGhlIGN1cnJlbnQsIHJlY2VpdmVkIFJ4
IGJ1ZmZlciBhbmQgZG9lcwotICogRE1BIHN5bmNocm9uaXphdGlvbi4KLSAqCi0gKiBSZXR1cm5z
IGEgcG9pbnRlciB0byB0aGUgcmVjZWl2ZWQgUnggYnVmZmVyLgotICovCi1zdGF0aWMgc3RydWN0
IGljZV9yeF9idWYgKmljZV9nZXRfcnhfYnVmX3pjKHN0cnVjdCBpY2VfcmluZyAqcnhfcmluZywg
aW50IHNpemUpCi17Ci0Jc3RydWN0IGljZV9yeF9idWYgKnJ4X2J1ZjsKLQotCXJ4X2J1ZiA9ICZy
eF9yaW5nLT5yeF9idWZbcnhfcmluZy0+bmV4dF90b19jbGVhbl07Ci0KLQlkbWFfc3luY19zaW5n
bGVfcmFuZ2VfZm9yX2NwdShyeF9yaW5nLT5kZXYsIHJ4X2J1Zi0+ZG1hLCAwLAotCQkJCSAgICAg
IHNpemUsIERNQV9CSURJUkVDVElPTkFMKTsKLQotCXJldHVybiByeF9idWY7Ci19Ci0KLS8qKgot
ICogaWNlX3JldXNlX3J4X2J1Zl96YyAtIHJldXNlIGFuIFJ4IGJ1ZmZlcgotICogQHJ4X3Jpbmc6
IFJ4IHJpbmcKLSAqIEBvbGRfYnVmOiBUaGUgYnVmZmVyIHRvIHJlY3ljbGUKLSAqCi0gKiBUaGlz
IGZ1bmN0aW9uIHJlY3ljbGVzIGEgZmluaXNoZWQgUnggYnVmZmVyLCBhbmQgcGxhY2VzIGl0IG9u
IHRoZSByZWN5Y2xlCi0gKiBxdWV1ZSAobmV4dF90b19hbGxvYykuCi0gKi8KLXN0YXRpYyB2b2lk
Ci1pY2VfcmV1c2VfcnhfYnVmX3pjKHN0cnVjdCBpY2VfcmluZyAqcnhfcmluZywgc3RydWN0IGlj
ZV9yeF9idWYgKm9sZF9idWYpCi17Ci0JdW5zaWduZWQgbG9uZyBtYXNrID0gKHVuc2lnbmVkIGxv
bmcpcnhfcmluZy0+eHNrX3VtZW0tPmNodW5rX21hc2s7Ci0JdTY0IGhyID0gcnhfcmluZy0+eHNr
X3VtZW0tPmhlYWRyb29tICsgWERQX1BBQ0tFVF9IRUFEUk9PTTsKLQl1MTYgbnRhID0gcnhfcmlu
Zy0+bmV4dF90b19hbGxvYzsKLQlzdHJ1Y3QgaWNlX3J4X2J1ZiAqbmV3X2J1ZjsKLQotCW5ld19i
dWYgPSAmcnhfcmluZy0+cnhfYnVmW250YSsrXTsKLQlyeF9yaW5nLT5uZXh0X3RvX2FsbG9jID0g
KG50YSA8IHJ4X3JpbmctPmNvdW50KSA/IG50YSA6IDA7Ci0KLQluZXdfYnVmLT5kbWEgPSBvbGRf
YnVmLT5kbWEgJiBtYXNrOwotCW5ld19idWYtPmRtYSArPSBocjsKLQotCW5ld19idWYtPmFkZHIg
PSAodm9pZCAqKSgodW5zaWduZWQgbG9uZylvbGRfYnVmLT5hZGRyICYgbWFzayk7Ci0JbmV3X2J1
Zi0+YWRkciArPSBocjsKLQotCW5ld19idWYtPmhhbmRsZSA9IG9sZF9idWYtPmhhbmRsZSAmIG1h
c2s7Ci0JbmV3X2J1Zi0+aGFuZGxlICs9IHJ4X3JpbmctPnhza191bWVtLT5oZWFkcm9vbTsKLQot
CW9sZF9idWYtPmFkZHIgPSBOVUxMOwotfQotCiAvKioKICAqIGljZV9jb25zdHJ1Y3Rfc2tiX3pj
IC0gQ3JlYXRlIGFuIHNrX2J1ZmYgZnJvbSB6ZXJvLWNvcHkgYnVmZmVyCiAgKiBAcnhfcmluZzog
UnggcmluZwpAQCAtNzU1LDEzICs0NzYsMTIgQEAgaWNlX3JldXNlX3J4X2J1Zl96YyhzdHJ1Y3Qg
aWNlX3JpbmcgKnJ4X3JpbmcsIHN0cnVjdCBpY2VfcnhfYnVmICpvbGRfYnVmKQogICogUmV0dXJu
cyB0aGUgc2tiIG9uIHN1Y2Nlc3MsIE5VTEwgb24gZmFpbHVyZS4KICAqLwogc3RhdGljIHN0cnVj
dCBza19idWZmICoKLWljZV9jb25zdHJ1Y3Rfc2tiX3pjKHN0cnVjdCBpY2VfcmluZyAqcnhfcmlu
Zywgc3RydWN0IGljZV9yeF9idWYgKnJ4X2J1ZiwKLQkJICAgICBzdHJ1Y3QgeGRwX2J1ZmYgKnhk
cCkKK2ljZV9jb25zdHJ1Y3Rfc2tiX3pjKHN0cnVjdCBpY2VfcmluZyAqcnhfcmluZywgc3RydWN0
IGljZV9yeF9idWYgKnJ4X2J1ZikKIHsKLQl1bnNpZ25lZCBpbnQgbWV0YXNpemUgPSB4ZHAtPmRh
dGEgLSB4ZHAtPmRhdGFfbWV0YTsKLQl1bnNpZ25lZCBpbnQgZGF0YXNpemUgPSB4ZHAtPmRhdGFf
ZW5kIC0geGRwLT5kYXRhOwotCXVuc2lnbmVkIGludCBkYXRhc2l6ZV9oYXJkID0geGRwLT5kYXRh
X2VuZCAtCi0JCQkJICAgICB4ZHAtPmRhdGFfaGFyZF9zdGFydDsKKwl1bnNpZ25lZCBpbnQgbWV0
YXNpemUgPSByeF9idWYtPnhkcC0+ZGF0YSAtIHJ4X2J1Zi0+eGRwLT5kYXRhX21ldGE7CisJdW5z
aWduZWQgaW50IGRhdGFzaXplID0gcnhfYnVmLT54ZHAtPmRhdGFfZW5kIC0gcnhfYnVmLT54ZHAt
PmRhdGE7CisJdW5zaWduZWQgaW50IGRhdGFzaXplX2hhcmQgPSByeF9idWYtPnhkcC0+ZGF0YV9l
bmQgLQorCQkJCSAgICAgcnhfYnVmLT54ZHAtPmRhdGFfaGFyZF9zdGFydDsKIAlzdHJ1Y3Qgc2tf
YnVmZiAqc2tiOwogCiAJc2tiID0gX19uYXBpX2FsbG9jX3NrYigmcnhfcmluZy0+cV92ZWN0b3It
Pm5hcGksIGRhdGFzaXplX2hhcmQsCkBAIC03NjksMTMgKzQ4OSwxMyBAQCBpY2VfY29uc3RydWN0
X3NrYl96YyhzdHJ1Y3QgaWNlX3JpbmcgKnJ4X3JpbmcsIHN0cnVjdCBpY2VfcnhfYnVmICpyeF9i
dWYsCiAJaWYgKHVubGlrZWx5KCFza2IpKQogCQlyZXR1cm4gTlVMTDsKIAotCXNrYl9yZXNlcnZl
KHNrYiwgeGRwLT5kYXRhIC0geGRwLT5kYXRhX2hhcmRfc3RhcnQpOwotCW1lbWNweShfX3NrYl9w
dXQoc2tiLCBkYXRhc2l6ZSksIHhkcC0+ZGF0YSwgZGF0YXNpemUpOworCXNrYl9yZXNlcnZlKHNr
YiwgcnhfYnVmLT54ZHAtPmRhdGEgLSByeF9idWYtPnhkcC0+ZGF0YV9oYXJkX3N0YXJ0KTsKKwlt
ZW1jcHkoX19za2JfcHV0KHNrYiwgZGF0YXNpemUpLCByeF9idWYtPnhkcC0+ZGF0YSwgZGF0YXNp
emUpOwogCWlmIChtZXRhc2l6ZSkKIAkJc2tiX21ldGFkYXRhX3NldChza2IsIG1ldGFzaXplKTsK
IAotCWljZV9yZXVzZV9yeF9idWZfemMocnhfcmluZywgcnhfYnVmKTsKLQorCXhza19idWZmX2Zy
ZWUocnhfYnVmLT54ZHApOworCXJ4X2J1Zi0+eGRwID0gTlVMTDsKIAlyZXR1cm4gc2tiOwogfQog
CkBAIC04MDIsNyArNTIyLDYgQEAgaWNlX3J1bl94ZHBfemMoc3RydWN0IGljZV9yaW5nICpyeF9y
aW5nLCBzdHJ1Y3QgeGRwX2J1ZmYgKnhkcCkKIAl9CiAKIAlhY3QgPSBicGZfcHJvZ19ydW5feGRw
KHhkcF9wcm9nLCB4ZHApOwotCXhkcC0+aGFuZGxlICs9IHhkcC0+ZGF0YSAtIHhkcC0+ZGF0YV9o
YXJkX3N0YXJ0OwogCXN3aXRjaCAoYWN0KSB7CiAJY2FzZSBYRFBfUEFTUzoKIAkJYnJlYWs7CkBA
IC04NDAsMTMgKzU1OSw4IEBAIGludCBpY2VfY2xlYW5fcnhfaXJxX3pjKHN0cnVjdCBpY2Vfcmlu
ZyAqcnhfcmluZywgaW50IGJ1ZGdldCkKIHsKIAl1bnNpZ25lZCBpbnQgdG90YWxfcnhfYnl0ZXMg
PSAwLCB0b3RhbF9yeF9wYWNrZXRzID0gMDsKIAl1MTYgY2xlYW5lZF9jb3VudCA9IElDRV9ERVND
X1VOVVNFRChyeF9yaW5nKTsKLQlzdHJ1Y3QgeGRwX3VtZW0gKnVtZW0gPSByeF9yaW5nLT54c2tf
dW1lbTsKIAl1bnNpZ25lZCBpbnQgeGRwX3htaXQgPSAwOwogCWJvb2wgZmFpbHVyZSA9IGZhbHNl
OwotCXN0cnVjdCB4ZHBfYnVmZiB4ZHA7Ci0KLQl4ZHAucnhxID0gJnJ4X3JpbmctPnhkcF9yeHE7
Ci0JeGRwLmZyYW1lX3N6ID0geHNrX3VtZW1feGRwX2ZyYW1lX3N6KHVtZW0pOwogCiAJd2hpbGUg
KGxpa2VseSh0b3RhbF9yeF9wYWNrZXRzIDwgKHVuc2lnbmVkIGludClidWRnZXQpKSB7CiAJCXVu
aW9uIGljZV8zMmJfcnhfZmxleF9kZXNjICpyeF9kZXNjOwpAQCAtODU4LDggKzU3Miw4IEBAIGlu
dCBpY2VfY2xlYW5fcnhfaXJxX3pjKHN0cnVjdCBpY2VfcmluZyAqcnhfcmluZywgaW50IGJ1ZGdl
dCkKIAkJdTggcnhfcHR5cGU7CiAKIAkJaWYgKGNsZWFuZWRfY291bnQgPj0gSUNFX1JYX0JVRl9X
UklURSkgewotCQkJZmFpbHVyZSB8PSBpY2VfYWxsb2NfcnhfYnVmc19mYXN0X3pjKHJ4X3Jpbmcs
Ci0JCQkJCQkJICAgICBjbGVhbmVkX2NvdW50KTsKKwkJCWZhaWx1cmUgfD0gaWNlX2FsbG9jX3J4
X2J1ZnNfemMocnhfcmluZywKKwkJCQkJCQljbGVhbmVkX2NvdW50KTsKIAkJCWNsZWFuZWRfY291
bnQgPSAwOwogCQl9CiAKQEAgLTg4MCwyNSArNTk0LDE5IEBAIGludCBpY2VfY2xlYW5fcnhfaXJx
X3pjKHN0cnVjdCBpY2VfcmluZyAqcnhfcmluZywgaW50IGJ1ZGdldCkKIAkJaWYgKCFzaXplKQog
CQkJYnJlYWs7CiAKLQkJcnhfYnVmID0gaWNlX2dldF9yeF9idWZfemMocnhfcmluZywgc2l6ZSk7
Ci0JCWlmICghcnhfYnVmLT5hZGRyKQotCQkJYnJlYWs7CiAKLQkJeGRwLmRhdGEgPSByeF9idWYt
PmFkZHI7Ci0JCXhkcC5kYXRhX21ldGEgPSB4ZHAuZGF0YTsKLQkJeGRwLmRhdGFfaGFyZF9zdGFy
dCA9IHhkcC5kYXRhIC0gWERQX1BBQ0tFVF9IRUFEUk9PTTsKLQkJeGRwLmRhdGFfZW5kID0geGRw
LmRhdGEgKyBzaXplOwotCQl4ZHAuaGFuZGxlID0gcnhfYnVmLT5oYW5kbGU7CisJCXJ4X2J1ZiA9
ICZyeF9yaW5nLT5yeF9idWZbcnhfcmluZy0+bmV4dF90b19jbGVhbl07CisJCXJ4X2J1Zi0+eGRw
LT5kYXRhX2VuZCA9IHJ4X2J1Zi0+eGRwLT5kYXRhICsgc2l6ZTsKKwkJeHNrX2J1ZmZfZG1hX3N5
bmNfZm9yX2NwdShyeF9idWYtPnhkcCk7CiAKLQkJeGRwX3JlcyA9IGljZV9ydW5feGRwX3pjKHJ4
X3JpbmcsICZ4ZHApOworCQl4ZHBfcmVzID0gaWNlX3J1bl94ZHBfemMocnhfcmluZywgcnhfYnVm
LT54ZHApOwogCQlpZiAoeGRwX3JlcykgewotCQkJaWYgKHhkcF9yZXMgJiAoSUNFX1hEUF9UWCB8
IElDRV9YRFBfUkVESVIpKSB7CisJCQlpZiAoeGRwX3JlcyAmIChJQ0VfWERQX1RYIHwgSUNFX1hE
UF9SRURJUikpCiAJCQkJeGRwX3htaXQgfD0geGRwX3JlczsKLQkJCQlyeF9idWYtPmFkZHIgPSBO
VUxMOwotCQkJfSBlbHNlIHsKLQkJCQlpY2VfcmV1c2VfcnhfYnVmX3pjKHJ4X3JpbmcsIHJ4X2J1
Zik7Ci0JCQl9CisJCQllbHNlCisJCQkJeHNrX2J1ZmZfZnJlZShyeF9idWYtPnhkcCk7CiAKKwkJ
CXJ4X2J1Zi0+eGRwID0gTlVMTDsKIAkJCXRvdGFsX3J4X2J5dGVzICs9IHNpemU7CiAJCQl0b3Rh
bF9yeF9wYWNrZXRzKys7CiAJCQljbGVhbmVkX2NvdW50Kys7CkBAIC05MDgsNyArNjE2LDcgQEAg
aW50IGljZV9jbGVhbl9yeF9pcnFfemMoc3RydWN0IGljZV9yaW5nICpyeF9yaW5nLCBpbnQgYnVk
Z2V0KQogCQl9CiAKIAkJLyogWERQX1BBU1MgcGF0aCAqLwotCQlza2IgPSBpY2VfY29uc3RydWN0
X3NrYl96YyhyeF9yaW5nLCByeF9idWYsICZ4ZHApOworCQlza2IgPSBpY2VfY29uc3RydWN0X3Nr
Yl96YyhyeF9yaW5nLCByeF9idWYpOwogCQlpZiAoIXNrYikgewogCQkJcnhfcmluZy0+cnhfc3Rh
dHMuYWxsb2NfYnVmX2ZhaWxlZCsrOwogCQkJYnJlYWs7CkBAIC05NzksMTAgKzY4Nyw5IEBAIHN0
YXRpYyBib29sIGljZV94bWl0X3pjKHN0cnVjdCBpY2VfcmluZyAqeGRwX3JpbmcsIGludCBidWRn
ZXQpCiAJCWlmICgheHNrX3VtZW1fY29uc3VtZV90eCh4ZHBfcmluZy0+eHNrX3VtZW0sICZkZXNj
KSkKIAkJCWJyZWFrOwogCi0JCWRtYSA9IHhkcF91bWVtX2dldF9kbWEoeGRwX3JpbmctPnhza191
bWVtLCBkZXNjLmFkZHIpOwotCi0JCWRtYV9zeW5jX3NpbmdsZV9mb3JfZGV2aWNlKHhkcF9yaW5n
LT5kZXYsIGRtYSwgZGVzYy5sZW4sCi0JCQkJCSAgIERNQV9CSURJUkVDVElPTkFMKTsKKwkJZG1h
ID0geHNrX2J1ZmZfcmF3X2dldF9kbWEoeGRwX3JpbmctPnhza191bWVtLCBkZXNjLmFkZHIpOwor
CQl4c2tfYnVmZl9yYXdfZG1hX3N5bmNfZm9yX2RldmljZSh4ZHBfcmluZy0+eHNrX3VtZW0sIGRt
YSwKKwkJCQkJCSBkZXNjLmxlbik7CiAKIAkJdHhfYnVmLT5ieXRlY291bnQgPSBkZXNjLmxlbjsK
IApAQCAtMTE2NSwxMSArODcyLDEwIEBAIHZvaWQgaWNlX3hza19jbGVhbl9yeF9yaW5nKHN0cnVj
dCBpY2VfcmluZyAqcnhfcmluZykKIAlmb3IgKGkgPSAwOyBpIDwgcnhfcmluZy0+Y291bnQ7IGkr
KykgewogCQlzdHJ1Y3QgaWNlX3J4X2J1ZiAqcnhfYnVmID0gJnJ4X3JpbmctPnJ4X2J1ZltpXTsK
IAotCQlpZiAoIXJ4X2J1Zi0+YWRkcikKKwkJaWYgKCFyeF9idWYtPnhkcCkKIAkJCWNvbnRpbnVl
OwogCi0JCXhza191bWVtX2ZxX3JldXNlKHJ4X3JpbmctPnhza191bWVtLCByeF9idWYtPmhhbmRs
ZSk7Ci0JCXJ4X2J1Zi0+YWRkciA9IE5VTEw7CisJCXJ4X2J1Zi0+eGRwID0gTlVMTDsKIAl9CiB9
CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmgg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3hzay5oCmluZGV4IDhhNGJhN2M2
ZDU0OS4uZmMxYTA2YjRkZjM2IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX3hzay5oCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
eHNrLmgKQEAgLTEwLDExICsxMCwxMCBAQCBzdHJ1Y3QgaWNlX3ZzaTsKIAogI2lmZGVmIENPTkZJ
R19YRFBfU09DS0VUUwogaW50IGljZV94c2tfdW1lbV9zZXR1cChzdHJ1Y3QgaWNlX3ZzaSAqdnNp
LCBzdHJ1Y3QgeGRwX3VtZW0gKnVtZW0sIHUxNiBxaWQpOwotdm9pZCBpY2VfemNhX2ZyZWUoc3Ry
dWN0IHplcm9fY29weV9hbGxvY2F0b3IgKnpjYSwgdW5zaWduZWQgbG9uZyBoYW5kbGUpOwogaW50
IGljZV9jbGVhbl9yeF9pcnFfemMoc3RydWN0IGljZV9yaW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0
KTsKIGJvb2wgaWNlX2NsZWFuX3R4X2lycV96YyhzdHJ1Y3QgaWNlX3JpbmcgKnhkcF9yaW5nLCBp
bnQgYnVkZ2V0KTsKIGludCBpY2VfeHNrX3dha2V1cChzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2
LCB1MzIgcXVldWVfaWQsIHUzMiBmbGFncyk7Ci1ib29sIGljZV9hbGxvY19yeF9idWZzX3Nsb3df
emMoc3RydWN0IGljZV9yaW5nICpyeF9yaW5nLCB1MTYgY291bnQpOworYm9vbCBpY2VfYWxsb2Nf
cnhfYnVmc196YyhzdHJ1Y3QgaWNlX3JpbmcgKnJ4X3JpbmcsIHUxNiBjb3VudCk7CiBib29sIGlj
ZV94c2tfYW55X3J4X3JpbmdfZW5hKHN0cnVjdCBpY2VfdnNpICp2c2kpOwogdm9pZCBpY2VfeHNr
X2NsZWFuX3J4X3Jpbmcoc3RydWN0IGljZV9yaW5nICpyeF9yaW5nKTsKIHZvaWQgaWNlX3hza19j
bGVhbl94ZHBfcmluZyhzdHJ1Y3QgaWNlX3JpbmcgKnhkcF9yaW5nKTsKQEAgLTI3LDEyICsyNiw2
IEBAIGljZV94c2tfdW1lbV9zZXR1cChzdHJ1Y3QgaWNlX3ZzaSBfX2Fsd2F5c191bnVzZWQgKnZz
aSwKIAlyZXR1cm4gLUVPUE5PVFNVUFA7CiB9CiAKLXN0YXRpYyBpbmxpbmUgdm9pZAotaWNlX3pj
YV9mcmVlKHN0cnVjdCB6ZXJvX2NvcHlfYWxsb2NhdG9yIF9fYWx3YXlzX3VudXNlZCAqemNhLAot
CSAgICAgdW5zaWduZWQgbG9uZyBfX2Fsd2F5c191bnVzZWQgaGFuZGxlKQotewotfQotCiBzdGF0
aWMgaW5saW5lIGludAogaWNlX2NsZWFuX3J4X2lycV96YyhzdHJ1Y3QgaWNlX3JpbmcgX19hbHdh
eXNfdW51c2VkICpyeF9yaW5nLAogCQkgICAgaW50IF9fYWx3YXlzX3VudXNlZCBidWRnZXQpCkBA
IC00OCw4ICs0MSw4IEBAIGljZV9jbGVhbl90eF9pcnFfemMoc3RydWN0IGljZV9yaW5nIF9fYWx3
YXlzX3VudXNlZCAqeGRwX3JpbmcsCiB9CiAKIHN0YXRpYyBpbmxpbmUgYm9vbAotaWNlX2FsbG9j
X3J4X2J1ZnNfc2xvd196YyhzdHJ1Y3QgaWNlX3JpbmcgX19hbHdheXNfdW51c2VkICpyeF9yaW5n
LAotCQkJICB1MTYgX19hbHdheXNfdW51c2VkIGNvdW50KQoraWNlX2FsbG9jX3J4X2J1ZnNfemMo
c3RydWN0IGljZV9yaW5nIF9fYWx3YXlzX3VudXNlZCAqcnhfcmluZywKKwkJICAgICB1MTYgX19h
bHdheXNfdW51c2VkIGNvdW50KQogewogCXJldHVybiBmYWxzZTsKIH0KLS0gCjIuMjUuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
