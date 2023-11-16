Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFAF7EE51D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Nov 2023 17:24:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52EE180F55;
	Thu, 16 Nov 2023 16:24:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52EE180F55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700151894;
	bh=9FuAQov3aBsBpE9T1GwggkRrqILSIDSA3haUA4iXcy4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=R5z4ZnROm97EEpdupDph14EpLBgRX6bZpaTu6oDzoxLXIBCFEHWTmDbk7eefmkMrT
	 /5wNvyYGqQsaacbq7ZZRsN7uqAU8vJ07fx53AiOOLo/Q+60pNAdQ0iPunS8ud+LH4b
	 850KYmtfXaIoQEuTsHJOcgMMJWJ7+OMQilByDRoai49xvIAfSkVtudGN0X58lCIK0K
	 0HUFFRtw9PHzT3/l4RygD2PESu4xWEKqAZ4np9WzsxodDWnTQuo5PizH6pehdCOIBe
	 VoweXk+JkpUe+OkFVTGOOi8lj7ancCGOWAxwbwfXb6gv538N8LpQuTNbmaLjot6tEw
	 qqwpc+6JCajLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E4XoR53jjRkt; Thu, 16 Nov 2023 16:24:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C1C480E50;
	Thu, 16 Nov 2023 16:24:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C1C480E50
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 906BA1BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 16:24:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 632A541A41
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 16:24:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 632A541A41
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0JswQQZ9zBEd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Nov 2023 16:24:46 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0DC37402BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 16:24:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DC37402BC
Received: by mail-wr1-x436.google.com with SMTP id
 ffacd0b85a97d-32d81864e3fso660906f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 08:24:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700151884; x=1700756684;
 h=content-transfer-encoding:organization:autocrypt:content-language
 :to:subject:from:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=pKDnpMdTWHPKTNNHGDDlm8yuzGiDKakDymBO54UIdZE=;
 b=ob8xih4vKMzCif9AV6YwkT7CW2j/EIaYTR72jZj49NtveTbugz4M+srSi2CigKyAPL
 ZFdthf8eykNdCprMx5cGAQKHqCr2r8ppNAnS56nsEjpdaujrA2xuHcl9mbTbUNfkyoV5
 S+se1mVldr6gaaTfO6trx823l48hPrhg3PL3W6o4ZDwId6JxF7k8/dKZcYwc4a/X3Pxl
 VjKfz94i5ucXdfVqTVuXzAla/uaC48XgorF20ZwxSGQFW8q+W2tAWVSm46VSKPJ5709+
 nuiscFFEXOZ0n9+bgwoelnMg5yGLzkePqt6bocDiaHdhV73YIWwJvaOAlSL9izQeMe8Y
 SR/g==
X-Gm-Message-State: AOJu0YxN2H+O3C84aREczpej7xZgBovcoNgt0utopIyO+g0fqvIPB3iW
 Wwm28l28XJSsWGWMuTSReglchlScDFOpA/PGr6WzpYPn52B6f3X18uQkFr05cQ2qeIjZTviP6rC
 305Q+WNpk5bPShnXqOhYMHOWJjEnGBStFfIQQlly1Fs54blJTAgauU3toD8XPapSNOziyLGy/MI
 Hm8755WIpQuPCXJ2qA90ztQo4=
X-Google-Smtp-Source: AGHT+IHehGH9BzVMRfWlRRZprihLb7J33oPrDdRrU6SIqQ8sSIMvsNOAPVM0D2pbDt14D0IC4RJOJw==
X-Received: by 2002:a5d:504e:0:b0:32d:bc7d:c431 with SMTP id
 h14-20020a5d504e000000b0032dbc7dc431mr11004160wrt.1.1700151883807; 
 Thu, 16 Nov 2023 08:24:43 -0800 (PST)
Received: from [10.100.10.83] ([57.133.65.178])
 by smtp.gmail.com with ESMTPSA id
 g5-20020a5d46c5000000b0032f7e832cabsm14046105wrs.90.2023.11.16.08.24.43
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Nov 2023 08:24:43 -0800 (PST)
Message-ID: <f38a6ca4-af05-48b1-a3e6-17ef2054e525@inovex.de>
Date: Thu, 16 Nov 2023 17:24:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Christian Rohmann <christian.rohmann@inovex.de>
To: intel-wired-lan@lists.osuosl.org
Content-Language: en-US
Autocrypt: addr=christian.rohmann@inovex.de; keydata=
 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
 6/S+Umx1vXWUG6ol8Oalq8coKRpry3O+ytxj/sc=
Organization: inovex GmbH
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inovex.de; s=google; t=1700151884; x=1700756684; darn=lists.osuosl.org;
 h=content-transfer-encoding:organization:autocrypt:content-language
 :to:subject:from:user-agent:mime-version:date:message-id:from:to:cc
 :subject:date:message-id:reply-to;
 bh=pKDnpMdTWHPKTNNHGDDlm8yuzGiDKakDymBO54UIdZE=;
 b=OLIL2xTgqDuSOFnL4JmA0CgxVZ7aLZWxJRAcJ8oaGmI5fPnCziCXR6JUk7fU/fFakq
 ydd+zy094GWxE9Rmu3DH1T6q5G5ZwMC3pjLpWY2harekiU84AaZ6HH6JqGZMnQ9+eb6m
 q0l2cRPDGu3exJxAyFQtgOdG/TxyZfj1r5ZDlf2AGIKVNZCQPaqDfrF3HJpD1I00uEDg
 aiPpeEjDtBu3ziAKpj5SW7cVjY2SVopp58lbl4KG+b/HvZT8wrhfUiNMwW7szSa2Ztj9
 g3/uJ77PZnRuLzhJUwvdBGY1e6GzAcoKlXiuXe5Omc3rLIso9sNkOwhtLObAbSDBhyD5
 W48A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=inovex.de header.i=@inovex.de
 header.a=rsa-sha256 header.s=google header.b=OLIL2xTg
Subject: [Intel-wired-lan] Counter spikes in /proc/net/dev for E810-CQDA2
 interfaces (ice driver) on kernel >=6.2
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

RGVhciBzaXIgb3IgbWFkYW0sCgp3ZSBydW4gbXVsdGlwbGUgSW50ZWwgRTgxMC1DUURBMiAxMDBH
IGFkYXB0ZXJzICgyeCBRU0ZQMjgpIGluIG91ciBmbGVldCAKb2Ygc2VydmVycyAuIFRoZSBtYWNo
aW5lcyBhcmUgcnVubmluZyBVYnVudHUgMjIuMDQgTFRTIChKYW1teSksIHdpZXRoIApMaW51eCBr
ZXJuZWwgNi4yLjAtMzYtZ2VuZXJpYyAoVWJ1bnR1IEhXRSBLZXJuZWwpLgoKVGhpcyBpcyB0aGUg
b3V0cHV0IGZyb20gZXRodG9vbDoKCi0tLWN1dCAtLS0KIyBldGh0b29sIC1pIGV0aDIKZHJpdmVy
OiBpY2UKdmVyc2lvbjogNi4yLjAtMzYtZ2VuZXJpYwpmaXJtd2FyZS12ZXJzaW9uOiA0LjMwIDB4
ODAwMWFmMjkgMS4zNDI5LjAKZXhwYW5zaW9uLXJvbS12ZXJzaW9uOgpidXMtaW5mbzogMDAwMDph
MTowMC4wCnN1cHBvcnRzLXN0YXRpc3RpY3M6IHllcwpzdXBwb3J0cy10ZXN0OiB5ZXMKc3VwcG9y
dHMtZWVwcm9tLWFjY2VzczogeWVzCnN1cHBvcnRzLXJlZ2lzdGVyLWR1bXA6IHllcwpzdXBwb3J0
cy1wcml2LWZsYWdzOiB5ZXMKCi0tLSBjdXQgLS0tCgpXZSBvYnNlcnZlIHN0cmFuZ2UsIHRvdGFs
bHkgdW5yZWFsaXN0aWMgdHJhZmZpYyBzcGlrZXMgKE11bHRpcGxlIApUZXJhYml0cy9zKSBpbiBv
dXIgbW9uaXRvcmluZy4gV2UgdXNlIHRoZSBQcm9tZXRoZXVzIE5vZGUgRXhwb3J0ZXIgYW5kIAp0
aGUgbmV0ZGV2IGNvbGxlY3RvciAKKGh0dHBzOi8vZ2l0aHViLmNvbS9wcm9tZXRoZXVzL25vZGVf
ZXhwb3J0ZXIvYmxvYi9lZDFiOGUzZDg4ODUxODA2NjI3ZTRmODI2MmVlMjYyMzJjYTU2YzJjL2Nv
bGxlY3Rvci9uZXRkZXZfY29tbW9uLmdvI0wzOSkuCkkgZm91bmQgaXNzdWUgaHR0cHM6Ly9naXRo
dWIuY29tL3Byb21ldGhldXMvbm9kZV9leHBvcnRlci9pc3N1ZXMvMTg0OSAKYW5kIGl0IGFwcGVh
cnMgdGhhdCBvdGhlcnMgaGF2ZSBub3RpY2VkIHNpbWlsYXIgaXNzdWVzIHdpdGggdGhlIGNvdW50
ZXJzLgoKSSBoYXZlIG5vdyBkdW1wZWQgIi9wcm9jL25ldC9kZXYiIG9mIG9uZSBvZiB0aGUgbWFj
aGluZXMgb25jZSBwZXIgc2Vjb25kIAp0byBhIGxvZ2ZpbGUgcGVyIGludGVyZmFjZSB0byBzaG93
IHRoZSBpc3N1ZSBhY3R1YWxseSBvcmlnaW5hdGVzIGZyb20gCnRoZSAiaWNlIiBrZXJuZWwgZHJp
dmVyCmFuZCBub3QgZnJvbSBhbnkgb2Ygb3VyIG90aGVyIHRvb2xpbmcuCgpJIGNhbiBwcm92aWRl
IHRoZSB3aG9sZSBmaWxlcywgYnV0IGlmIHlvdSBqdXN0IGxvb2sgYXQgdHdvIHRpbWVzdGFtcHMg
aW4gCnBhcnRpY3VsYXIsIHlvdSBjYW4gYWN0dWFsbHkgc2VlIHR3byBqdW1wIGluIHRoZSBjb3Vu
dGVyczoKCi0tLSBjdXQgLS0tCkludGVyLXzCoMKgIFJlY2VpdmUgfMKgIFRyYW5zbWl0CiDCoGZh
Y2UgfGJ5dGVzwqDCoMKgIHBhY2tldHMgZXJycyBkcm9wIGZpZm8gZnJhbWUgY29tcHJlc3NlZCAK
bXVsdGljYXN0fGJ5dGVzwqDCoMKgIHBhY2tldHMgZXJycyBkcm9wIGZpZm8gY29sbHMgY2Fycmll
ciBjb21wcmVzc2VkClsuLi5dCk5vdiAxNiAxNDo0NDoxN8KgwqAgZXRoMjogMzIyNDgwMjc1MjQ2
Nzk1IDE2MTIwMjYzNzc5MSAxMjI0NSAyMzk2MjI2wqDCoMKgIAowwqDCoMKgwqAgMMKgwqDCoMKg
wqDCoMKgwqDCoCAwwqAgNzEyMDQxMjYgNDk3OTU4Nzk3NjA5NDY0IDE4ODUwMDM0MDkwN8KgwqDC
oCAwwqDCoMKgIDDCoMKgwqAgCjDCoMKgwqDCoCAwwqDCoMKgwqDCoMKgIDDCoMKgwqDCoMKgwqDC
oMKgwqAgMApOb3YgMTYgMTQ6NDQ6MTjCoMKgIGV0aDI6IDM4NjYxNzg1MzM4MjU2NSAxOTM5NTM2
NjU4MzAgMTIyNDUgMjM5NjIyNsKgwqDCoCAKMMKgwqDCoMKgIDDCoMKgwqDCoMKgwqDCoMKgwqAg
MMKgIDcxMjA0MjgyIDU5MzU4NjYwNjkzNTk0OSAyMjM4MDI2NTYxMjDCoMKgwqAgMMKgwqDCoCAw
wqDCoMKgIAowwqDCoMKgwqAgMMKgwqDCoMKgwqDCoCAwwqDCoMKgwqDCoMKgwqDCoMKgIDAKWy4u
Ll0KTm92IDE2IDE0OjQ5OjEwwqDCoCBldGgyOiAzODY2NjI4NDU5MzY4MTAgMTkzOTc3NTAxODk1
IDEyMjQ3IDIzOTYyMjbCoMKgwqAgCjDCoMKgwqDCoCAwwqDCoMKgwqDCoMKgwqDCoMKgIDDCoCA3
MTIzMDk5MyA1OTM2Mzc0OTUzMDYwOTIgMjIzODI3MTk3NjA5wqDCoMKgIDDCoMKgwqAgMMKgwqDC
oCAKMMKgwqDCoMKgIDDCoMKgwqDCoMKgwqAgMMKgwqDCoMKgwqDCoMKgwqDCoCAwCk5vdiAxNiAx
NDo0OToxMcKgwqAgZXRoMjogNDUwODQ1NTIwNTM4OTMyIDIyNjc1MjQzODM1NiAxMjI0NyAyMzk2
MjI2wqDCoMKgIAowwqDCoMKgwqAgMMKgwqDCoMKgwqDCoMKgwqDCoCAwwqAgNzEyMzA5OTMgNjg5
MzE2NDY1MTM0NDI5IDI1OTE1NDE0MDAwM8KgwqDCoCAwwqDCoMKgIDDCoMKgwqAgCjDCoMKgwqDC
oCAwwqDCoMKgwqDCoMKgIDDCoMKgwqDCoMKgwqDCoMKgwqAgMApbLi4uXQotLS0gY3V0IC0tLQoK
CklmIHlvdSByZXF1aXJlIGFueSBtb3JlIGluZm9ybWF0aW9uIHRvIG5hcnJvdyBkb3duIHRoZSBp
c3N1ZSwgcGxlYXNlIApkb24ndCBoZXNpdGF0ZSB0byBjb250YWN0IG1lLgoKCgpSZWdhcmRzCgoK
Q2hyaXN0aWFuIFJvaG1hbm4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
