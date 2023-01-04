Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1950E65D9EF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jan 2023 17:34:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B066C61089;
	Wed,  4 Jan 2023 16:34:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B066C61089
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672850090;
	bh=X2N2fJBOIqBzIyhorwxo2pjlBXmSBpvna77a4vyHvUw=;
	h=Date:To:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=dOeqQo3IOkiyblUkLKokfIGwzFrFogOdnOf+/jzZHHjqDUfgAs5Y44P0OCQ35M72c
	 GsU7TbVaj3wQONZaGL7oYVkaWdhBSXqvpIgSD9G/S27zy1i36AuTPO0GOPwmkUR2CY
	 caaeuN5p3bnYCpwMoUtJljTnG74fWj0A5DcnugioSYbHCrx63v1fGPVSbiib8KvoLp
	 xlQOHQ1EuYVtx0GkpTpu2ASTSI2n9q+e33twuPyYqfw1ENuiw3TByZHb0UUgcINDn5
	 5BxWqK5OTygfcES0JxGs4oM+1f6YwCCfbWTr3x0sJfieml2iUY36vBE4XEr7s9DJLf
	 Wtw1XUKgWEP8w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 02cxLLjX9cm2; Wed,  4 Jan 2023 16:34:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C17A061083;
	Wed,  4 Jan 2023 16:34:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C17A061083
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2849C1BF31D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 08:39:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0F53340A92
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 08:39:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F53340A92
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TSjLnIScW-GX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jan 2023 08:39:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0FB22400EC
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0FB22400EC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 08:39:19 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id b3so49436009lfv.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Jan 2023 00:39:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:subject:from:to:content-language
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=j+91RhPGaVF8Yf1jNkoQS4ycf6wzMw7d/xxWOowXU/U=;
 b=y6Mc+UoMpIPM7LPFxtWnYKfuWgtFZnJfk7EI+YzIkP06v4a5oNLRGokQOV1382Iqit
 zbYCcfDNFE0jslNdukQQBJOl213MUn4JPB59dr4O/c/xwOfQokbxZ/G3INtut5+U3DHi
 +Fj5puptIib00HkddTBWwj8RwGn3xBczn6IukkOZIm+0P2oh3hlsUzCs/j5jQNqQJfY7
 1PAnFNpjy5VlqQZdp+Kb9f+ATMnDbhpGAfynb0aWN2C+v/neXN2vpUxySFa7Ce2gaPDd
 /0XwrAeqz2WB+Uas153Ccjcf0knKKVqDAmAndumYfYjYpqytbvx4KydAA7L6hejT6zOY
 JCtw==
X-Gm-Message-State: AFqh2kpodKIHh68Spde9R5CfV9YnRsE9nm2L735fDrWO5B7xYx2zKUWm
 Q61t7OQUhxj9bR3fj8oRx3ldRRta5Ek=
X-Google-Smtp-Source: AMrXdXt3+CzavZUIN4DOQOjrXpD24tTTX5lSRGdncyX/JbfJXiG74KoM0HxCJbvvRFP+2LEcPLoqIg==
X-Received: by 2002:a05:6512:158d:b0:4b5:90c5:281c with SMTP id
 bp13-20020a056512158d00b004b590c5281cmr14755516lfb.19.1672821557896; 
 Wed, 04 Jan 2023 00:39:17 -0800 (PST)
Received: from [10.0.20.244] ([91.224.119.190])
 by smtp.gmail.com with ESMTPSA id
 h13-20020a05651211cd00b004a2511b8224sm5008551lfr.103.2023.01.04.00.39.16
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Jan 2023 00:39:17 -0800 (PST)
Message-ID: <706eb098-cbc8-0b88-b125-819426edbf85@gmail.com>
Date: Wed, 4 Jan 2023 09:39:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: pl
To: intel-wired-lan@lists.osuosl.org
From: Bartek Kois <bartek.kois@gmail.com>
X-Mailman-Approved-At: Wed, 04 Jan 2023 16:34:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:subject:from:to:content-language
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=j+91RhPGaVF8Yf1jNkoQS4ycf6wzMw7d/xxWOowXU/U=;
 b=E/RoMHBnfSAk4xtFIyy6bKGj8sO5qajh2r7rVPIeqbNmd+FtxWIaI9NI3CYWdxzhGE
 IAyGNJL85XgDO75arpjmw8eZN5gsF1mqzwNkbVXyzOwhkfKgjrn06TfJewtrdpHRre0t
 1/czp3sH0C4RjOA+hiahNjDglxyepX/GqU3PFDe2txrh1pbs9aQB9vu0R57md/hTMis+
 6veAYmpMBSYilghKi/nrL5yCwLkf2KB7NVFqSVilGKC2nQLa+uWkbUopFkDIn/1lWfq8
 2jyg9qEM8RHRwrte7XQfSJ/p+GxJXx7MPYwj4QJdUSf8pfQW8+ACh65bLoKmB7qJiMMc
 rgUA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=E/RoMHBn
Subject: [Intel-wired-lan] Supermicro AOC-STGN-I1S (Intel 82599EN based 10G
 adapter) - poor network perfomance after moving to Debian 11.5
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

SGkKCkFmdGVyIG1vdmluZyBmcm9tIERlYmlhbiA5LjcgdG8gMTEuNSBhcyBzb29uIGFzIEkgcGVy
Zm9ybSAiaXAgbGluayBzZXQgCmVucDFzMCB1cCIgZm9yIG15IDEwRyBhZGFwdGVyIChBT0MtU1RH
Ti1JMVMgLSBJbnRlbCA4MjU5OUVOIGJhc2VkIDEwRyAKYWRhcHRlcikgSSBhbSBleHBlcmllbmNp
bmcgaGlnaCBjcHUgbG9hZCAoZXZlbiBpZiBubyB0cmFmZmljIGlzIHBhc3NpbmcgCnRocm91Z2gg
dGhlIGFkYXB0ZXIpIGFuZCBuZXR3b3JrIHBlcmZvcm1hbmNlIGlzIGxvdyAod2hlbiBuZXR3b3Jr
IGlzIApjb25uZWN0ZWQpLiBUaGUgY3B1IGxvYWQgaXMgb3NjaWxhdGlvbmcgYmV0d2VlbiAwLjEg
YW5kIDAuMyBvbiB2YW5pbGxhIApzeXN0ZW0gd2l0aCBubyBuZXR3b3JrIGF0dGFjaGVkLiBUaGUg
cHJvYmxlbSBjYW4gYmUgb2JzZXJ2ZWQgb24gdGhlIApmb2xsb3dpbmcgcGxhdGZvcm1zOiBTdXBl
cm1pY3JvIFg5U0NMIChJbnRlbCBDMjAyIFBDSCkgYW5kIFN1cGVybWljcm8gClgxMFNMTCstRiAo
SW50ZWwgQzIyMiBFeHByZXNzIFBDSCksIGJ1dCBmb3IgdGhlIFN1cGVybWljcm8gWDExU1NMLUYg
CihJbnRlbMKuIEMyMzIgY2hpcHNldCkgZXZlcnl0aW5nIGlzIHdvcmtpbmcgd2VsbC4KClRlc3Rl
ZCBlbnZpcm9tZW50czoKRGViaWFuIDkuNyAtIExpbnV4IDQuOS4wLTYtYW1kNjQgIzEgU01QIERl
YmlhbiA0LjkuODgtMStkZWI5dTEgCigyMDE4LTA1LTA3KSB4ODZfNjQgR05VL0xpbnV4IFthbGwg
cGxhdGZvcm1zIHdvcmtpbmcgd2VsbCB3aXRoIG5vIApwcm9ibGVtczogU3VwZXJtaWNybyBYOVND
TCAoSW50ZWwgQzIwMiBQQ0gpLCBTdXBlcm1pY3JvIFgxMFNMTCstRiAoSW50ZWwgCkMyMjIgRXhw
cmVzcyBQQ0gpLCBTdXBlcm1pY3JvIFgxMVNTTC1GIChJbnRlbMKuIEMyMzIgY2hpcHNldCldCkRl
YmlhbiAxMS41IC0gTGludXggNS4xMC4wLTE5LWFtZDY0ICMxIFNNUCBEZWJpYW4gNS4xMC4xNDkt
MiAKKDIwMjItMTAtMjEpIHg4Nl82NCBHTlUvTGludXjCoCBbb2xkZXIgcGxhdGZvcm1zOiBTdXBl
cm1pY3JvIFg5U0NMIChJbnRlbCAKQzIwMiBQQ0gpLCBTdXBlcm1pY3JvIFgxMFNMTCstRiAoSW50
ZWwgQzIyMiBFeHByZXNzIFBDSCkgYmVoYXZlIApwcm9ibGVtYXRpYyBhcyBkZXNjcmliZWQgYWJv
dmUgfCBuZXdlciBwbGF0Zm9ybTogU3VwZXJtaWNybyBYMTFTU0wtRiAKKEludGVswq4gQzIzMiBj
aGlwc2V0KSB3b3JraW5nIHdlbGwgd2l0aCBubyBwcm9ibGVtc10KClNvIGZhciB0byBzb2x2ZSB0
aGUgcHJvYmxlbSBJIHdhcyB0cnlpbmcgdG8gdXBncmFkZSBzeXN0ZW0gdG8gdGhlIG5ld2VzdCAK
c3RhYmxlIHZlcnNpb24sIHVwZ3JhZGUga2VybmVsIHRvIHZlcnNpb24gNi54LCB1cGdyYWRlIGl4
Z2JlIGRyaXZlciB0byAKdGhlIG5ld2VzdCB2ZXJzaW9uIGJ1dCB3aXRoIG5vIGx1Y2suCgpTdXBl
cm1pY3JvIHN1cHBvcnQgc3VnZ2VzdGVkIGFzIGZvbGxvd3M6Cml0IG1pZ2h0IGJlIGtlcm5lbCBy
ZWxldGVkIGRlYmlhbiAxMS41IGhhcyBrZXJuZWwgNS4xMCB3aGloY2ggaXMgYSAKcmVjZW50IGtl
cm5lbCBpdCBtaWdodCBub3QgcHJvcGVybHkgc3VwcG9ydCB0aGUgY2hpcHNldHMgZm9yIFg5IAp0
aGVyZWZvcmUgaSBzdWdnZXN0IHRvIHVzZSBSSEVMIG9yIENlbnRPUyBhcyB0aGV5IHVzZSBtdWNo
IG9sZGVyIGtlcm5lbCAKdmVyc2lvbnMuIEkgZXhwZWN0IHRoYXQgd2l0aCB1YnVudHUgMjAuMDQg
eW91IHNlZSB0aGUgc2FtZSBwcm9ibGVtIGl0IAp1c2VzIGtlcm5lbCA1LjQKCkJlc3QgcmVnYXJk
cwpCYXJ0ZWsgS29pcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
