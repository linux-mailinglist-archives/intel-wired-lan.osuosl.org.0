Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3612E64B92C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Dec 2022 17:02:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB5934097E;
	Tue, 13 Dec 2022 16:02:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB5934097E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670947321;
	bh=aHf5WVTs/zgHmyTmI99b55OpZGv2JtAsTSjZv96dbIc=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rU8mzdWfOcIWNd69qG3ZsUjzQ8kmqVPw5qx5ojrbI+PZkMbqTMZjapI7+sg2qY6U+
	 J9RU95nfIVYqyj46OLsOjLNcg6jSIYORNis6uHYy1FLjcdQd/GhBJK2IQrgSJXS/42
	 tQnI+lGT1T0t19CsTLhxMSPe8RottcIlbD6CfRhf/LhK7Jb3h5fYvuIXqX35CnrMp4
	 OT58NiQoNf+ddIaj9YyOu4w3nuY33Ektg4Nk1tae+4z5v1HKa/ZZ05jgB1KxZcTkLh
	 a/UkfaQkEuhqBaZdDA9pJYg1DOEBXUmjXMk1BvYh0+wsRcaIWy48aBrbmqE4fW/oT8
	 qyAH+ZVQgb3jA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hmXd1QNpSaGo; Tue, 13 Dec 2022 16:02:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B521F40A93;
	Tue, 13 Dec 2022 16:02:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B521F40A93
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 154201BF328
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 14:29:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F150A600D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 14:29:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F150A600D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zNbwQS8clBOy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Dec 2022 14:29:23 +0000 (UTC)
X-Greylist: delayed 00:25:35 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4D48600C4
Received: from crumpet.qq2.net (crumpet.qq2.net [80.247.17.44])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C4D48600C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 14:29:22 +0000 (UTC)
Received: from mail-ej1-f46.google.com ([209.85.218.46])
 by crumpet.qq2.net with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <geoff@defgeoff.co.uk>)
 id 1p55sg-0002AC-OR
 for intel-wired-lan@lists.osuosl.org ; Tue, 13 Dec 2022 14:03:39 +0000
Received: by mail-ej1-f46.google.com with SMTP id x22so36688546ejs.11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 06:03:38 -0800 (PST)
X-Gm-Message-State: ANoB5pljHl0Qo0EiYmj41wLXmQQ0J9yQf8GuWTBucdUl7SNf+McIMRoL
 E735QSbQ+SaiW7YftgEBlCyKZIhphEMSVVkgLw==
X-Google-Smtp-Source: AA0mqf44DZC3XSxEHv6iGMapoaat3mGiKZr8QpKTUF36zBbnLw/VJi0Kp6H2FTWCMnLM1fjo07e8YquY+d5dlayNj7A=
X-Received: by 2002:a17:906:79d0:b0:7c1:6091:e7b with SMTP id
 m16-20020a17090679d000b007c160910e7bmr829522ejo.513.1670940218051; Tue, 13
 Dec 2022 06:03:38 -0800 (PST)
MIME-Version: 1.0
From: Geoff Winkless <geoff@defgeoff.co.uk>
Date: Tue, 13 Dec 2022 14:03:26 +0000
X-Gmail-Original-Message-ID: <CAEzk6ffEcOFx0N3sXJovy6CbNdeg95bWHmPw1Hy5+v2Dgng7iQ@mail.gmail.com>
Message-ID: <CAEzk6ffEcOFx0N3sXJovy6CbNdeg95bWHmPw1Hy5+v2Dgng7iQ@mail.gmail.com>
To: intel-wired-lan@lists.osuosl.org
Content-Type: multipart/mixed; boundary="00000000000023675005efb61638"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-Mailman-Approved-At: Tue, 13 Dec 2022 16:01:27 +0000
Subject: [Intel-wired-lan] e1000e eeprom_bad_csum_allow option
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--00000000000023675005efb61638
Content-Type: text/plain; charset="UTF-8"

Hi

First off, apologies if this is the wrong place to send this email, in
which case please do point me in the right direction.

We recently came across an issue with an embedded system that
historically ran 2.6.x and which we've (in beta) updated to kernel
5.14.5 (since that's the version we're running on our more recent
devices, and I wanted to standardise): after an unexpected power
cycle, the e1000e came up with apparently-corrupted MAC, and the unit
didn't appear on the network.

e1000e: Intel(R) PRO/1000 Network Driver
e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
e1000e 0000:01:00.0: Interrupt Throttling Rate (ints/sec) set to
dynamic conservative mode
e1000e 0000:01:00.0: Invalid MAC Address: 00:00:00:00:00:00
e1000e: probe of 0000:01:00.0 failed with error -5

Now the old e1000 driver accepts this broken MAC, albeit while
complaining about it, allowing userspace to force a MAC address and
continue, but the e1000e just drops out and rejects it.

Is there any reason why the e1000e couldn't do the same (and also with
the probably-related NVM checksum failure), as per the attached patch
based on the e1000 code?

I took out the dump_eeprom function the e1000 uses because a) I didn't
need it and b) I don't have the time to gain enough understanding of
the differences between the e1000 and e1000e drivers to port it
without (almost certainly) messing it up.

Oddly enough, booting with 2.6 seemed to fix the problem (it came up
with its normal MAC and would then subsequently boot fine into 5.14.5)
which leaves me wondering if there's something else the e1000 driver
does that we should also consider porting. It could just have been a
coincidence, though.

Thanks

Geoff

--00000000000023675005efb61638
Content-Type: application/octet-stream; name="e1000e-ignore-nvm.patch"
Content-Disposition: attachment; filename="e1000e-ignore-nvm.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lbma87940>
X-Attachment-Id: f_lbma87940

ZGlmZiAtYkJyIC1VIDMgZTEwMDBlLW9yaWcvbGludXgtNi4xL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2UxMDAwZS9uZXRkZXYuYyBlMTAwMGUtcGF0Y2hlZC9saW51eC02LjEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCi0tLSBlMTAwMGUtb3JpZy9saW51eC02
LjEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCTIwMjItMTItMTEg
MjI6MTU6MTguMDAwMDAwMDAwICswMDAwCisrKyBlMTAwMGUtcGF0Y2hlZC9saW51eC02LjEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCTIwMjItMTItMTMgMTM6MDU6
NDcuMTU0Nzk1NTM1ICswMDAwCkBAIC03NTY4LDMxICs3NTY4LDM2IEBACiAJICogYXR0ZW1wdC4g
TGV0J3MgZ2l2ZSBpdCBhIGZldyB0cmllcwogCSAqLwogCWZvciAoaSA9IDA7OyBpKyspIHsKLQkJ
aWYgKGUxMDAwX3ZhbGlkYXRlX252bV9jaGVja3N1bSgmYWRhcHRlci0+aHcpID49IDApCisJCWlm
IChlMTAwMF92YWxpZGF0ZV9udm1fY2hlY2tzdW0oJmFkYXB0ZXItPmh3KSA+PSAwKSB7CisJCS8q
IGNvcHkgdGhlIE1BQyBhZGRyZXNzICovCisJCQlpZiAoZTEwMDBlX3JlYWRfbWFjX2FkZHIoJmFk
YXB0ZXItPmh3KSkKKwkJCQlkZXZfZXJyKCZwZGV2LT5kZXYsCisJCQkJIk5WTSBSZWFkIEVycm9y
IHdoaWxlIHJlYWRpbmcgTUFDIGFkZHJlc3NcbiIpOwogCQkJYnJlYWs7CisJCX0KIAkJaWYgKGkg
PT0gMikgewogCQkJZGV2X2VycigmcGRldi0+ZGV2LCAiVGhlIE5WTSBDaGVja3N1bSBJcyBOb3Qg
VmFsaWRcbiIpOwotCQkJZXJyID0gLUVJTzsKLQkJCWdvdG8gZXJyX2VlcHJvbTsKKwkJLyoKKyAJ
CSAqIHNldCBNQUMgYWRkcmVzcyB0byBhbGwgemVyb2VzIHRvIGludmFsaWRhdGUgYW5kIHRlbXBv
cmFyeQorIAkJICogZGlzYWJsZSB0aGlzIGRldmljZSBmb3IgdGhlIHVzZXIuIFRoaXMgYmxvY2tz
IHJlZ3VsYXIKKyAJCSAqIHRyYWZmaWMgd2hpbGUgc3RpbGwgcGVybWl0dGluZyBldGh0b29sIGlv
Y3RscyBmcm9tIHJlYWNoaW5nCisgCQkgKiB0aGUgaGFyZHdhcmUgYXMgd2VsbCBhcyBhbGxvd2lu
ZyB0aGUgdXNlciB0byBydW4gdGhlCisgCQkgKiBpbnRlcmZhY2UgYWZ0ZXIgbWFudWFsbHkgc2V0
dGluZyBhIGh3IGFkZHIgdXNpbmcKKyAJCSAqIGBpcCBzZXQgYWRkcmVzc2AKKyAJCSAqLworCQkJ
bWVtc2V0KGFkYXB0ZXItPmh3Lm1hYy5hZGRyLCAwLCBzaXplb2YoYWRhcHRlci0+aHcubWFjLmFk
ZHIpKTsKIAkJfQogCX0KIAotCWUxMDAwX2VlcHJvbV9jaGVja3MoYWRhcHRlcik7Ci0KLQkvKiBj
b3B5IHRoZSBNQUMgYWRkcmVzcyAqLwotCWlmIChlMTAwMGVfcmVhZF9tYWNfYWRkcigmYWRhcHRl
ci0+aHcpKQotCQlkZXZfZXJyKCZwZGV2LT5kZXYsCi0JCQkiTlZNIFJlYWQgRXJyb3Igd2hpbGUg
cmVhZGluZyBNQUMgYWRkcmVzc1xuIik7Ci0KIAlldGhfaHdfYWRkcl9zZXQobmV0ZGV2LCBhZGFw
dGVyLT5ody5tYWMuYWRkcik7CiAKKy8qIGRvbid0IGJsb2NrIGluaXRhbGl6YXRpb24gaGVyZSBk
dWUgdG8gYmFkIE1BQyBhZGRyZXNzICovCiAJaWYgKCFpc192YWxpZF9ldGhlcl9hZGRyKG5ldGRl
di0+ZGV2X2FkZHIpKSB7CiAJCWRldl9lcnIoJnBkZXYtPmRldiwgIkludmFsaWQgTUFDIEFkZHJl
c3M6ICVwTVxuIiwKIAkJCW5ldGRldi0+ZGV2X2FkZHIpOwotCQllcnIgPSAtRUlPOwotCQlnb3Rv
IGVycl9lZXByb207CiAJfQogCisJZTEwMDBfZWVwcm9tX2NoZWNrcyhhZGFwdGVyKTsKIAl0aW1l
cl9zZXR1cCgmYWRhcHRlci0+d2F0Y2hkb2dfdGltZXIsIGUxMDAwX3dhdGNoZG9nLCAwKTsKIAl0
aW1lcl9zZXR1cCgmYWRhcHRlci0+cGh5X2luZm9fdGltZXIsIGUxMDAwX3VwZGF0ZV9waHlfaW5m
bywgMCk7CiAKQEAgLTc2OTYsNyArNzcwMSw3IEBACiBlcnJfcmVnaXN0ZXI6CiAJaWYgKCEoYWRh
cHRlci0+ZmxhZ3MgJiBGTEFHX0hBU19BTVQpKQogCQllMTAwMGVfcmVsZWFzZV9od19jb250cm9s
KGFkYXB0ZXIpOwotZXJyX2VlcHJvbToKKy8vZXJyX2VlcHJvbToKIAlpZiAoaHctPnBoeS5vcHMu
Y2hlY2tfcmVzZXRfYmxvY2sgJiYgIWh3LT5waHkub3BzLmNoZWNrX3Jlc2V0X2Jsb2NrKGh3KSkK
IAkJZTEwMDBfcGh5X2h3X3Jlc2V0KCZhZGFwdGVyLT5odyk7CiBlcnJfaHdfaW5pdDoK
--00000000000023675005efb61638
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--00000000000023675005efb61638--
