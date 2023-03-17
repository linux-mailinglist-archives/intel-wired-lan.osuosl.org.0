Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B90A56BE1F5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Mar 2023 08:34:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD1188210E;
	Fri, 17 Mar 2023 07:34:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD1188210E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679038481;
	bh=+LQM7DLLpRAtKZk78YLuVNhH2zh5Ma2owaFy+AgkPa4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nv4w3z/K1r7H2Oe+yx1iQXuMEbJRBhcONCGqobpg5nkX6sIOKrHJYSNjO/Jw8vGGJ
	 s56IHTi/+DBhzMUg7/Mna7Q66Hd3N4Yrk9Oh9WbZKhzoYZAfuuetOpJIzEN7BZajTl
	 oDU0aMz2LzT+TmAEm3xvQPLC7KabrhqBDuRtZZjD5iHRyFXiE+mWp6897KwoXnQhk2
	 KWxV8udAFONF2f+U0D5q4aMiQJLjrDyrX5LBQ7Uybndrahju5BeGsm/TkYkwJivGeS
	 JR+pNxvIlEH4qwCCtIktfnwiXnj4z1zyXFHxVWqKg/xmzScqnLr4eZDPoJa+8d1qJl
	 fzMoD+PvIQNCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N-ito7I_64Hd; Fri, 17 Mar 2023 07:34:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2A128210B;
	Fri, 17 Mar 2023 07:34:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2A128210B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F1B91BF25B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 07:34:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 05A6F4092B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 07:34:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05A6F4092B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4NE366YAosEi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Mar 2023 07:34:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CCB9040865
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CCB9040865
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 07:34:34 +0000 (UTC)
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com
 [209.85.214.198])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 595293FE90
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 07:34:32 +0000 (UTC)
Received: by mail-pl1-f198.google.com with SMTP id
 az7-20020a170902a58700b001a0534b4ddbso2353436plb.15
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 00:34:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679038470;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kckcOzTJlaR2QIbylBcmsrACsbd8S7zI3U3RAx9HH2c=;
 b=4wzmPrQyXyklXHZdhVPcg4tgcvlW48aVulPX2jS7VVsKtopbC/j2irFFjdeVbVrSid
 fyIW14o8M1bCOp0UuokPInHDmYo0I9RL9MVrimr/OGK2fr01jZTREIZjk0iOjiglAfpm
 7VQQ7r1Dn71ILbvgG6Q65C9d9F1FgFguutq+EBTGV5V4mQnDZ0CudjdP4oNYigvtg5w+
 YXggF1UZ1baQi+aShgcI/DWHIWvXYJeBUbFePfUS1DkNIm+sWlHy6j4Lqhkw8V2vd6yG
 3Nux+oZ6nnOEK3CE/Y3jxQ2OTUMSsTkTG/Tk+EfLI/exP3Wc+JWqV1FIVPPX5SaEfGQW
 29bA==
X-Gm-Message-State: AO0yUKVt3mNqA1yMQl4RGeIdrwLNrYYIpGIdQ4Ezeowi46TwP2DooBUQ
 aeOR7FjRk9mV3bvfubJ45TMxaBaLRG9yCaZb5X4URSKZ3N0Jx0KmTopBhJdLqqantCHteaAMt8i
 4H7WqadZCteTfNMroSrE/auhOO7z6QGW6Of4KL4x01Zo85cHfPkNAGKmhmMvL3TY=
X-Received: by 2002:a17:902:d484:b0:1a0:48ff:539c with SMTP id
 c4-20020a170902d48400b001a048ff539cmr2661000plg.11.1679038470629; 
 Fri, 17 Mar 2023 00:34:30 -0700 (PDT)
X-Google-Smtp-Source: AK7set844wQzp8A3SsGhbjR2XzptSZsnMclN8YXLmYSRfJjx/Igxl2YnD/PvTJrIPk/mEiEEOiEzRjmT1R/j89kB6eM=
X-Received: by 2002:a17:902:d484:b0:1a0:48ff:539c with SMTP id
 c4-20020a170902d48400b001a048ff539cmr2660997plg.11.1679038470313; Fri, 17 Mar
 2023 00:34:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230222140741.35550-1-mateusz.palczewski@intel.com>
 <20c52c7c-c3c6-ff3c-469f-ed3cfea88e1d@molgen.mpg.de>
 <CAAd53p72mMcUnLujy2GXMmjtZHUM5kvtx1nEBtS5OsqFzftmLA@mail.gmail.com>
 <BL1PR11MB52886D1CD0C802757A2C6E3587BF9@BL1PR11MB5288.namprd11.prod.outlook.com>
In-Reply-To: <BL1PR11MB52886D1CD0C802757A2C6E3587BF9@BL1PR11MB5288.namprd11.prod.outlook.com>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Fri, 17 Mar 2023 15:34:19 +0800
Message-ID: <CAAd53p6=nmGXnPnN8NRdheX43sn8Y_xRyWizUTmwF5=n_poJaQ@mail.gmail.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1679038472;
 bh=kckcOzTJlaR2QIbylBcmsrACsbd8S7zI3U3RAx9HH2c=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=laM4MAGeUUCpsrQzZAcrYJwF4GYgtmp5SuJIS1vpI+31YeyHJWXutZvq2wNPlDG9D
 8e+nneZrmd8AfZQSqp2jL1uhwFbXEgSZuoVQz1W+Lw1qBHx/zyfuvnGJSgyzGFCPMC
 EzkrOzjntoU4O0YChaB9e2zSHmbx+SY8WBEo6LPfofXwadNX7pe28vGrYu4aoXRjMO
 HrQOb1uoALBJBQg98uge8Sg//o1bKfLHvKLVtcoAC77iWDDLFTSbwG6eDpjtY2EBTc
 fmiNJV/BFMdVgynFRlZ7XbCU5KUtYNy/tGboDea+744B9fRrHuXzUYn91yRjBCClVv
 9qcjYAyAdE8nA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=laM4MAGe
Subject: Re: [Intel-wired-lan] [PATCH net v3] e1000e: Disable TSO on i219-LM
 card to increase speed
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Basierski, SebastianX" <sebastianx.basierski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgTWF0ZXVzeiwKCk9uIFdlZCwgTWFyIDE1LCAyMDIzIGF0IDg6NDTigK9QTSBQYWxjemV3c2tp
LCBNYXRldXN6CjxtYXRldXN6LnBhbGN6ZXdza2lAaW50ZWwuY29tPiB3cm90ZToKW3NuaXBwZWRd
Cj4gPiA+IEFsc28gdGhlIHF1ZXN0aW9ucyBmcm9tIHRoZSBkaXNjdXNzaW9uIG9mIHYyKD8pIHdh
cyBub3QgYW5zd2VyZWQsIHdoeQo+ID4gPiB0aGUgY29uZGl0aW9ucyBpbiB0aGUgaWYgc3RhdGVt
ZW50IG9mIHRoZSBjb2RlIGFkZGVkIGJ5IGNvbW1pdAo+ID4gPiBmMjk4MDEwMzBhYzYgd2hlcmUg
bm90IHRydWUuCj4gPiA+Cj4gPiA+ICAgICAgLyogZGlzYWJsZSBUU08gZm9yIHBjaWUgYW5kIDEw
LzEwMCBzcGVlZHMsIHRvIGF2b2lkCj4gPiA+ICAgICAgICogc29tZSBoYXJkd2FyZSBpc3N1ZXMK
PiA+ID4gICAgICAgKi8KPiA+ID4gICAgICBpZiAoIShhZGFwdGVyLT5mbGFncyAmIEZMQUdfVFNP
X0ZPUkNFKSkgewo+ID4KPiA+IFllYSwgbXkgaWRlYSB3YXMgdG8gdGFrZSBGTEFHX1RTT19GT1JD
RSBpbnRvIGNvbnNpZGVyYXRpb24gaGVuY2UgdGhlIGFkZGluZyB0aGUgY2hhbmdlIHRvIHRoaXMg
aWYgYmxvY2suCj4gPgo+ID4gTWF5YmUgc29tZW9uZSBzdGlsbCB3YW50cyB0byBlbmFibGUgVFNP
IGRlc3BpdGUgb2YgdGhlIGRvd25zaWRlPwo+Cj4gQnkgZGlzYWJsaW5nIFRTTyBkdXJpbmcgcHJv
YmUgd2UgYXJlIG5vdCBzaHV0dGluZyBpdCBkb3duIGNvbXBsZXRseSwgaWYgYSB1c2VyIHdhbnRz
IHRvIHVzZSBpdCBhbnl3YXkgZGVzcGl0ZSBzcGVlZCBkZWNyZWFzZSBpdCBjYW4gYmUgZG9uZSBt
YW51YWxseSB3aXRoIGV0aHRvb2wuCgpNYXliZSBtb3ZlIHRoZSB3aG9sZSBibG9jayBvZiAiRkxB
R19UU09fRk9SQ0UiIHRvIHByb2JlIHJvdXRpbmU/IFNvCnRoZSBjb2RlIGlzIGxvZ2ljYWxseSBn
cm91cGVkLgoKS2FpLUhlbmcKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
