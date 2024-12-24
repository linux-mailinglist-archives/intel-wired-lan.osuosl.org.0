Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E0D9FE9D2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Dec 2024 19:27:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7723280ACD;
	Mon, 30 Dec 2024 18:27:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eRMP-U7qoZ8H; Mon, 30 Dec 2024 18:27:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAF4780AD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735583269;
	bh=seWP6kqArevizHglz0qRK5bckvTj8RCFYEbWuS1h0AU=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Y5eiu6ZZzyplNdgJTXc9noatG9+99i28ZCqsyvg9rW7M6ZCLfcvBRZg901WvCMSkO
	 mX5eV0/S8wIf6bMG3pF+m5PU7kBdhLxN0g6jJcfXBal7AZH5J36HzYnOS4Tk5ix9xZ
	 6b3P9qS8ty2ENyiE/ptjL5ol4MJOuPfTlGNv5lJ4tyJr37H9Uj0jgO0wo5RBhDsNrX
	 MuZwsOUmpguvRqIXM4IQ2kUNGeL7XGSGIrPUJFOwI8fU/6VMn7PWQeKVD57tKo54Sv
	 QMz+115HVOdd5vba0mf8tFPl4I5Iw+4INAojif0dLVAepB/JLf4X4uKEfGIqv/oxdH
	 /aDsy6DOwzW0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAF4780AD3;
	Mon, 30 Dec 2024 18:27:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 54BAFF16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Dec 2024 03:54:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 21EC9413B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Dec 2024 03:54:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I1OctcArO2pc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Dec 2024 03:54:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::233; helo=mail-lj1-x233.google.com;
 envelope-from=haifeng.xu@shopee.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C8313413AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8313413AB
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C8313413AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Dec 2024 03:54:15 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id
 38308e7fff4ca-300392cc4caso52934561fa.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 19:54:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735012453; x=1735617253;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=seWP6kqArevizHglz0qRK5bckvTj8RCFYEbWuS1h0AU=;
 b=SrVUHX0/vh+HnoshuMZuFLy71yX+d0AOgMLLWhnRzQOwB5BiHxSZFZQTs6dfqliCpC
 qyviocM7rTQfx/dRcQy1+CrM0blJ8o/FGbotV39IskgHJ8JQnKlAVX1xYXerp6bH/G9N
 LkjbXFkrj/C60jlTDHtOwcyNLvl0MEnUUSV44JNY9h3+dmqrON0LdiSsodckbz722aNN
 dJw32vdorIi7leOw1/xbFL5KYpjQ/M5GEJ+thzPDctCLCacR+BeiWIkafyG26hUgoTDv
 XLMGBtlFEUXoOGzdwa+aHEZ/3KaEqJv+4YjUIXsoN7EpnV3l5NymdycotkCElKREg1LY
 2kUQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXQyNw5LkwW+ecq79IuUEXnavDDPkGF28KNHE/ux6Fk3zn6/iu3hF+dH1/juHYeCowzCT7vJAip2OyIfyR6kXA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyrG29ZXBGcXFrJ13gJiclb3YyIMlxTHjnoaptpjigDQDbkImiH
 2jad4nYIyAJz/ZnJwQv28t6/5TAxKrurHU9eb0sD++KxHzXf0/eZv240pgF8LsCpXTo3ZPhSWmV
 Hk9YL3koxpr62uo/EyDlc0+9KwyugWAAMx9Bagg==
X-Gm-Gg: ASbGncsSwMHbC8mdk24nfQy2NgVe366piMlou7zcmxpAdrBTGaDp9LrVitA7/cqVTNO
 wLjmPKjWveQmpossfmsKpfJZGIcGGrY5aXQTz
X-Google-Smtp-Source: AGHT+IHdmLeMHPSHwLYMm/UIkICMmX38PvDh6ItbMlB/pxhVYROGqsk27Ma0F1CvfPcr9mJAmToB6sP6X/oScUomkbM=
X-Received: by 2002:a05:651c:400b:b0:302:2baf:6d14 with SMTP id
 38308e7fff4ca-304685f0594mr27532921fa.40.1735012453182; Mon, 23 Dec 2024
 19:54:13 -0800 (PST)
MIME-Version: 1.0
From: Haifeng Xu <haifeng.xu@shopee.com>
Date: Tue, 24 Dec 2024 11:53:37 +0800
Message-ID: <CAKE46yXb+oDbNhvNao3GWNa13fkwevqDkZ3DXU0ahKhQmHGLTg@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: multipart/alternative; boundary="000000000000f4018b0629fc10d3"
X-Mailman-Approved-At: Mon, 30 Dec 2024 18:27:46 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shopee.com; s=shopee.com; t=1735012453; x=1735617253; darn=lists.osuosl.org; 
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=seWP6kqArevizHglz0qRK5bckvTj8RCFYEbWuS1h0AU=;
 b=Fg9dzxQoKZQyJF5AaxEYyLHkpvKIlSfjEXseOajtWnrQZPyCv5M46tG1J0qF3PyUYG
 sEzabnYq1OE0Z+cx5MxWaFp2//EcLTZ5KdPF/eUigIdaZ/jEA9V81sfWN5Mkk/Zp/j/K
 /SyEu/GIR0+7W7RtTrY2Ky1DuvzaoLQoxtad6erNzE2KYxLA975bnru6OtUsiDcycJlg
 XdBilucPhPvoxsnLtEKlZFwimqtkUBZKi6PpYgb+HWRqb1XaD8d6BQif0NkmMIuaxsgE
 acehfROn1v6jWx+0xh+l6kgFGIxa3+63d4hd2scx0Q8b9HeGXS9O9bsnQAAfkj9d+WcZ
 d1nA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=shopee.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=shopee.com header.i=@shopee.com header.a=rsa-sha256
 header.s=shopee.com header.b=Fg9dzxQo
Subject: [Intel-wired-lan] =?utf-8?b?W1F1ZXN0aW9uXSBpeGdiZe+8mk1lY2hhbmlz?=
 =?utf-8?q?m_of_RSS?=
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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

--000000000000f4018b0629fc10d3
Content-Type: text/plain; charset="UTF-8"

Hi masters,
    We use the Intel Corporation 82599ES NIC in our production environment.
And it has 63 rx
    queues, every rx queue interrupt is processed by a single cpu.

    The RSS configuration can be seen as follow:

RX flow hash indirection table for eno5 with 63 RX ring(s):
    0:      0     1     2     3     4     5     6     7
    8:      8     9    10    11    12    13    14    15
   16:      0     1     2     3     4     5     6     7
   24:      8     9    10    11    12    13    14    15
   32:      0     1     2     3     4     5     6     7
   40:      8     9    10    11    12    13    14    15
   48:      0     1     2     3     4     5     6     7
   56:      8     9    10    11    12    13    14    15
   64:      0     1     2     3     4     5     6     7
   72:      8     9    10    11    12    13    14    15
   80:      0     1     2     3     4     5     6     7
   88:      8     9    10    11    12    13    14    15
   96:      0     1     2     3     4     5     6     7
  104:      8     9    10    11    12    13    14    15
  112:      0     1     2     3     4     5     6     7
  120:      8     9    10    11    12    13    14    15

    The maximum number of RSS queues is 16. So I have some questions about
this.
     Will other cpus except 0~15 receive the rx interrupts?

      In our production environment, cpu 16~62 also receive the rx
interrupts. Was our RSS       misconfigured?

--000000000000f4018b0629fc10d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SGkgbWFzdGVycyw8ZGl2PsKgIMKgIFdlIHVzZSB0aGXCoEludGVsIENv
cnBvcmF0aW9uIDgyNTk5RVMgTklDIGluIG91ciBwcm9kdWN0aW9uIGVudmlyb25tZW50LiBBbmQg
aXQgaGFzIDYzIHJ4PC9kaXY+PGRpdj7CoCDCoCBxdWV1ZXMsIGV2ZXJ5IHJ4IHF1ZXVlIGludGVy
cnVwdCBpcyBwcm9jZXNzZWQgYnkgYSBzaW5nbGUgY3B1LjwvZGl2PjxkaXY+PGJyPjwvZGl2Pjxk
aXY+wqAgwqAgVGhlIFJTUyBjb25maWd1cmF0aW9uIGNhbiBiZSBzZWVuIGFzIGZvbGxvdzo8L2Rp
dj48ZGl2Pjxicj48L2Rpdj48ZGl2PlJYIGZsb3cgaGFzaCBpbmRpcmVjdGlvbiB0YWJsZSBmb3Ig
ZW5vNSB3aXRoIDYzIFJYIHJpbmcocyk6PC9kaXY+wqAgwqAgMDogwqAgwqAgwqAwIMKgIMKgIDEg
wqAgwqAgMiDCoCDCoCAzIMKgIMKgIDQgwqAgwqAgNSDCoCDCoCA2IMKgIMKgIDc8YnI+wqAgwqAg
ODogwqAgwqAgwqA4IMKgIMKgIDkgwqAgwqAxMCDCoCDCoDExIMKgIMKgMTIgwqAgwqAxMyDCoCDC
oDE0IMKgIMKgMTU8YnI+wqAgwqAxNjogwqAgwqAgwqAwIMKgIMKgIDEgwqAgwqAgMiDCoCDCoCAz
IMKgIMKgIDQgwqAgwqAgNSDCoCDCoCA2IMKgIMKgIDc8YnI+wqAgwqAyNDogwqAgwqAgwqA4IMKg
IMKgIDkgwqAgwqAxMCDCoCDCoDExIMKgIMKgMTIgwqAgwqAxMyDCoCDCoDE0IMKgIMKgMTU8YnI+
wqAgwqAzMjogwqAgwqAgwqAwIMKgIMKgIDEgwqAgwqAgMiDCoCDCoCAzIMKgIMKgIDQgwqAgwqAg
NSDCoCDCoCA2IMKgIMKgIDc8YnI+wqAgwqA0MDogwqAgwqAgwqA4IMKgIMKgIDkgwqAgwqAxMCDC
oCDCoDExIMKgIMKgMTIgwqAgwqAxMyDCoCDCoDE0IMKgIMKgMTU8YnI+wqAgwqA0ODogwqAgwqAg
wqAwIMKgIMKgIDEgwqAgwqAgMiDCoCDCoCAzIMKgIMKgIDQgwqAgwqAgNSDCoCDCoCA2IMKgIMKg
IDc8YnI+wqAgwqA1NjogwqAgwqAgwqA4IMKgIMKgIDkgwqAgwqAxMCDCoCDCoDExIMKgIMKgMTIg
wqAgwqAxMyDCoCDCoDE0IMKgIMKgMTU8YnI+wqAgwqA2NDogwqAgwqAgwqAwIMKgIMKgIDEgwqAg
wqAgMiDCoCDCoCAzIMKgIMKgIDQgwqAgwqAgNSDCoCDCoCA2IMKgIMKgIDc8YnI+wqAgwqA3Mjog
wqAgwqAgwqA4IMKgIMKgIDkgwqAgwqAxMCDCoCDCoDExIMKgIMKgMTIgwqAgwqAxMyDCoCDCoDE0
IMKgIMKgMTU8YnI+wqAgwqA4MDogwqAgwqAgwqAwIMKgIMKgIDEgwqAgwqAgMiDCoCDCoCAzIMKg
IMKgIDQgwqAgwqAgNSDCoCDCoCA2IMKgIMKgIDc8YnI+wqAgwqA4ODogwqAgwqAgwqA4IMKgIMKg
IDkgwqAgwqAxMCDCoCDCoDExIMKgIMKgMTIgwqAgwqAxMyDCoCDCoDE0IMKgIMKgMTU8YnI+wqAg
wqA5NjogwqAgwqAgwqAwIMKgIMKgIDEgwqAgwqAgMiDCoCDCoCAzIMKgIMKgIDQgwqAgwqAgNSDC
oCDCoCA2IMKgIMKgIDc8YnI+wqAgMTA0OiDCoCDCoCDCoDggwqAgwqAgOSDCoCDCoDEwIMKgIMKg
MTEgwqAgwqAxMiDCoCDCoDEzIMKgIMKgMTQgwqAgwqAxNTxicj7CoCAxMTI6IMKgIMKgIMKgMCDC
oCDCoCAxIMKgIMKgIDIgwqAgwqAgMyDCoCDCoCA0IMKgIMKgIDUgwqAgwqAgNiDCoCDCoCA3PGJy
PsKgIDEyMDogwqAgwqAgwqA4IMKgIMKgIDkgwqAgwqAxMCDCoCDCoDExIMKgIMKgMTIgwqAgwqAx
MyDCoCDCoDE0IMKgIMKgMTU8ZGl2Pjxicj48L2Rpdj48ZGl2PsKgIMKgIFRoZSBtYXhpbXVtIG51
bWJlciBvZiBSU1MgcXVldWVzIGlzIDE2LiBTbyBJIGhhdmUgc29tZSBxdWVzdGlvbnMgYWJvdXQg
dGhpcy48L2Rpdj48ZGl2PsKgIMKgIMKgV2lsbCBvdGhlciBjcHVzIGV4Y2VwdCAwfjE1IHJlY2Vp
dmUgdGhlIHJ4IGludGVycnVwdHM/wqA8L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PsKgIMKgIMKg
IEluIG91ciBwcm9kdWN0aW9uIGVudmlyb25tZW50LCBjcHUgMTZ+NjIgYWxzbyByZWNlaXZlwqB0
aGUgcnggaW50ZXJydXB0cy4gV2FzIG91ciBSU1PCoCDCoCDCoCDCoG1pc2NvbmZpZ3VyZWQ/PC9k
aXY+PC9kaXY+DQo=
--000000000000f4018b0629fc10d3--
