Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E32B058F516
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 02:09:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0729282BBA;
	Thu, 11 Aug 2022 00:09:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0729282BBA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660176579;
	bh=lU4Y5pjWvC+kOPyO5OOu+i4pOha5radtY9tiZUjpPuM=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3MK7TAJWKXnr7EiLmlkQYlFt5B8oqDdgF9GwXMSvb8XUumbLO9PWxQS4IXQ5iMTTH
	 f5GrBjWlai1ID2LqRUg5BWq8jp621QuhhpRdALxpfQSTz5WtU+tW9b1+Uz+SeLGhaq
	 BFwgScaCw9wSonzbLl6Dbfg2mwHGFKpTo8pqRmYcLoSn6gTaSopLTs1uphazz6rN+p
	 uWuy+ATW8mLIz4qBfT5k+FO/M7pfNciVyJvscF+WcNwpkBdCPAxNcPL6LpTJb2eDLA
	 bgHcFOwWLk1tdb7bT2G2b6BZl6Bf63XrjA3+ApIozUBotfrG729mA1a6brA43DGoul
	 TYen9P1tACWkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qbjhjxVCnMKq; Thu, 11 Aug 2022 00:09:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10CF9827AF;
	Thu, 11 Aug 2022 00:09:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10CF9827AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C8D871C1148
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 00:09:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A3D3640B8D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 00:09:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3D3640B8D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0MvioireLng7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 00:09:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AFAB140BAD
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AFAB140BAD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 00:09:31 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id y1so10017606plb.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 17:09:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:content-language:in-reply-to:mime-version
 :user-agent:date:message-id:from:references:cc:to:subject
 :x-gm-message-state:from:to:cc;
 bh=eFBcu9YFdFlsv4/cPb5nOLceR847AjQQE9jq4LyMAew=;
 b=DZ061Xh6EcKK6FV7rykokd6Fa5sepzpE3eHfjjshP4typNB8kjhYDPx8nKMN7PvWMF
 hQFUPjHEeYG6M6fy8T+72c2WqggPLp79yTe1FKqN/u9muiu0FeLLyurgQpG7zE0W0WhB
 Lsh7YEZ7TQcPGjEV8mRS3qeJ+fUY5uuj6IeanU/5U0l1R3JzLnvFOS3ojjAWfaPpX0jm
 7sl49osePPEs3lOh6JsHNlNRbRnNcG1zQUgYEunsuQ9b4rARd80SYv2f4eZG2JuZxKgI
 232g5rLh57XwttNn0vowU5cYHz1WbRjpdFsYtFHhwCl54wsNVMGZI+ACLE4P/zzkRaR2
 f65Q==
X-Gm-Message-State: ACgBeo3U/SGtPdWBsJZ8OL09LBERxq7aSoK169c0KMTv7CWvOB69ReO0
 DbOl1PwJlVGzxOZ57kJCDKA=
X-Google-Smtp-Source: AA6agR7f13QP3sxHiWfn03Cth6p40F8Wv6UKsIFJ3leURUC/FE1DcOoVY8YexnRXbxrWsI/Rlf6MOQ==
X-Received: by 2002:a17:90b:4c8e:b0:1f7:2083:a91b with SMTP id
 my14-20020a17090b4c8e00b001f72083a91bmr6121640pjb.119.1660176570964; 
 Wed, 10 Aug 2022 17:09:30 -0700 (PDT)
Received: from [0.0.0.0] ([205.198.104.55]) by smtp.gmail.com with ESMTPSA id
 y18-20020a626412000000b0052d5e93fcb7sm2600245pfb.191.2022.08.10.17.09.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Aug 2022 17:09:30 -0700 (PDT)
To: Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20220809133502.37387-1-meljbao@gmail.com>
 <b39c9fa3-1b7c-c7b1-c3dd-bf5ceb035dc8@intel.com>
 <0b4ce201-be78-5a5d-0098-0cbe14ea43fd@gmail.com>
 <da087ad9-981a-2a9f-a134-1f6cab7addc0@intel.com>
From: Linjun Bao <meljbao@gmail.com>
Message-ID: <65791f63-d4d7-a5e8-06e6-f7030efb35a4@gmail.com>
Date: Thu, 11 Aug 2022 08:09:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <da087ad9-981a-2a9f-a134-1f6cab7addc0@intel.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:content-language:in-reply-to:mime-version
 :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc;
 bh=eFBcu9YFdFlsv4/cPb5nOLceR847AjQQE9jq4LyMAew=;
 b=DGdaSB+nwdELrcUx+1Ve2JD8pyl8Jb2NDBX0Rhpo+shLllYuhE7n31Sw8321nnmdhJ
 63JHAC2/BUqnKJLWrllhhDUJKFae9jGrDHYZC3RfJ/i9i+C8yUS6IKMBrndmf/m1+nNL
 Bl4ep0O/CnSofJRdZNBSwMVd92YF9MqmeqMje0tDhbHr6r9AYY8kypiEVfpUe+dAW4q2
 2zv+Rfx6OPf44qYJqVntdXpAxTFvTD10R/ZX3MExQwOKKERDfBR+jClVmx2pznBBNiZc
 SP0mWbU1dUQAdpaxH1/RH0bxkVJWPAJPLzOsdP5FOd97U1juJ/mcicy7x5YjxOWiM//B
 1Tag==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=DGdaSB+n
Subject: Re: [Intel-wired-lan] [PATCH] igc: Remove _I_PHY_ID check for i225
 devices
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyMDIyLzgvMTEg5LiK5Y2IMToyMCwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4gT24gOC8xMC8y
MDIyIDE6MjIgQU0sIExpbmp1biBCYW8gd3JvdGU6Cj4+IFllcyB0aGlzIGNvbW1pdCB3YXMgY29t
bWl0dGVkIHRvIG1haW5saW5lIGFib3V0IG9uZSB5ZWFyIGFnby4gQnV0IHRoaXMgY29tbWl0IGhh
cyBub3QgYmVlbiBpbmNsdWRlZCBpbnRvIGtlcm5lbCA1LjQgeWV0LCBhbmQgSSBlbmNvdW50ZXJl
ZCB0aGUgcHJvYmUgZmFpbHVyZSB3aGVuIHVzaW5nIGFsZGVybGFrZS1zIHdpdGggRXRoZXJuZXQg
YWRhcHRlciBpMjI1LUxNLiBTaW5jZSBJIGNvdWxkIG5vdCBkaXJlY3RseSBhcHBseSB0aGUgcGF0
Y2ggN2M0OTZkZTUzOGVlIHRvIGtlcm5lbCA1LjQsIHNvIEkgZ2VuZXJhdGVkIHRoaXMgcGF0Y2gg
Zm9yIGtlcm5lbCA1LjQgdXNhZ2UuCj4+Cj4+Cj4+IExvb2tzIGxpa2Ugc2VuZGluZyBhIGR1cGxp
Y2F0ZWQgcGF0Y2ggaXMgbm90IGV4cGVjdGVkLiBXb3VsZCB5b3UgcGxlYXNlIGFkdmlzZSB3aGF0
IGlzIHRoZSBwcm9wZXIgYWN0aW9uIHdoZW4gZW5jb3VudGVyaW5nIHN1Y2ggY2FzZT8gCj4gCj4g
U291bmRzIGxpa2UgeW91IHdhbnQgdGhpcyBiYWNrcG9ydGVkIHRvIHN0YWJsZS4gRG9jdW1lbnRh
dGlvbiBvbiBob3cgdG8gZG8gaXQgaXMgaGVyZSBbMV0uIE9wdGlvbiAzIHNlZW1zIHRvIGJlIHRo
ZSBjb3JyZWN0IGNob2ljZS4KPiAKVGhhbmsgeW91IFRvbnksIHlvdSBndWlkZSBtZSB0aGUgY29y
cmVjdCB3YXksIHllYWggSSB3YW50IHRoaXMgYmFja3BvcnRlZCB0byBzdGFibGUga2VybmVsIDUu
NC4gQW5kIG5vdyBJIHVuZGVyc3RhbmQgdGhlIGdldF9tYWludGFpbmVyLnBsIGlzIGZvciBtYWlu
bGluZSBkZXZlbG9wbWVudC4KClJlZ2FyZHMKSm9zZXBoCgo+IFRoYW5rcywKPiBUb255Cj4gCj4g
WzFdIGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nlc3Mvc3RhYmxl
LWtlcm5lbC1ydWxlcy5odG1sI3Byb2NlZHVyZS1mb3Itc3VibWl0dGluZy1wYXRjaGVzLXRvLXRo
ZS1zdGFibGUtdHJlZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
