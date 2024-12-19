Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F489F7D9A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Dec 2024 16:06:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C8EB83BC3;
	Thu, 19 Dec 2024 15:06:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eZXLeIwUkyhU; Thu, 19 Dec 2024 15:06:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBB9783BCB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734620762;
	bh=MFAFaT7H3vJsEqUqZgMndld6HXM2bslGfmNYfbEwjWs=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VPUYINXYB2LJFkNtks3Qvtq99ZZ0ekxjkHI5VOefTW/O7YSJnbzKsM7bSTe2wh3hZ
	 IGL2qg9cwbSV8e3ydL7WMgO8w2E/b2GcyWTz7uaUAXVp1SCA9eGjSXnozSeCOVHqjQ
	 JbGF8DutBACtZ3BnUu5XilhtzwF4p523pnAJPaJCbSY4H/vgPkWv7gFPGST8cHe55f
	 ho4qk3Y3ZKxGrZyC/WbgpZ9pwEFHT4aZiC7gZ49J+FmS64XrIP9NraXpW6ZqU439MY
	 EfVy93VRzsW/S5KETW3R9/WLCReOgNTUW64RrSez7CQSXHVcggcUn0O7qIuh74sRnr
	 cihY7DHvAM+SQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BBB9783BCB;
	Thu, 19 Dec 2024 15:06:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9F5FA6C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 15:05:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7F329838DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 15:05:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QbQYDowJZvZx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Dec 2024 15:05:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::734; helo=mail-qk1-x734.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CD0B481F18
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD0B481F18
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CD0B481F18
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 15:05:58 +0000 (UTC)
Received: by mail-qk1-x734.google.com with SMTP id
 af79cd13be357-7b6f19a6c04so68588385a.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 07:05:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734620757; x=1735225557;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=MFAFaT7H3vJsEqUqZgMndld6HXM2bslGfmNYfbEwjWs=;
 b=E3ZBWku3GaOs4mWTQ/VBMxQHy9RoKC3LXS8Vf14ho/qkhcG0MQ9dA/EzP3yU34URRv
 SVMQB4uCHZD0V1A13NpHysF950l41w8kHS6fuwAROTVBo0AhwX5cfxLZpth0fpNZnGqk
 YePftMr1H6rO6OLNNI2sN0EZ4uA9acZHqU2Aft/UGKxbFHIhCCcAgUP05PJGYQ7sKU5i
 LoKN2bFH+jOBEWo0lHEo7Jtd5ljNahYICQ4R4AExTzrpvevll2M8F0XciVyD6+FXHDlP
 /iH50r3Vt9j48JVbeIsSh5wjOG4E6iYNivUwzWgz4ynfiAY6lrF06Vh/m23SAn7KtHUV
 yPDQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU/mQjmWJMtT+d1poFPeDRjaQ4HVAdNMSDyRI02H+DtwqlczPcTR48AVFlsaS2VTmD3ZKOPjIvHsy3P0D8nm7g=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzY/aabLnS72MzY7OlcpBq/vezAEkh6MUKwgA8eq04uV35IEhdl
 kBWHe9vorBbve9NWQs0CICBnh/JwsiXkD7NsnQUBWw2EClz57GH86mZFhA==
X-Gm-Gg: ASbGncsFitSf1Ug7VU7ZPcxRjcteNWyvhR/+d88T7nbIdO0K4azc0h+gmDugeArEPSL
 ySXhd19dpYvR1a90OoMM95Gh47hh3FUZJrq4WOx3/G/lNA9Qg1LaNv8EsvQ9uCpvx+BvHmthjIO
 YsjeVK6J95PC56H8WnbsH6Db1+j5h9Twr2n+9cPG3Xtli5/EDHWG0swZIvylwJW8jjQFiOryzSy
 6j7GtSb5MdPZK/2f/I+pobjKgBs1zTIExyGcI2VDGLTWSGOh4LrPoSKvpsBT2zGNiIWMVbab89M
 WP+Pe9lBSnnoZbdZYvi5h8b7aa2+Si+P/g==
X-Google-Smtp-Source: AGHT+IHxVSLVfe2pwOKsdi9/cnNsKhfPDaez/0PMOVLhzZTX1detS7jXcy82ffFhZjts2wBxEf0dkg==
X-Received: by 2002:a05:620a:4453:b0:7b7:106a:19a0 with SMTP id
 af79cd13be357-7b863720701mr1166403885a.24.1734620757491; 
 Thu, 19 Dec 2024 07:05:57 -0800 (PST)
Received: from localhost (96.206.236.35.bc.googleusercontent.com.
 [35.236.206.96]) by smtp.gmail.com with ESMTPSA id
 af79cd13be357-7b9ac2f8fe6sm55109285a.51.2024.12.19.07.05.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2024 07:05:56 -0800 (PST)
Date: Thu, 19 Dec 2024 10:05:56 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Milena Olech <milena.olech@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Emil Tantilov <emil.s.tantilov@intel.com>, 
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Message-ID: <67643654983ec_1d0f5c29421@willemb.c.googlers.com.notmuch>
In-Reply-To: <20241219094411.110082-8-milena.olech@intel.com>
References: <20241219094411.110082-1-milena.olech@intel.com>
 <20241219094411.110082-8-milena.olech@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1734620757; x=1735225557; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MFAFaT7H3vJsEqUqZgMndld6HXM2bslGfmNYfbEwjWs=;
 b=Jsl68siiTyKEYY5fj/4REkPH8pLNcgkxW+xI86FpEGziBWbKqi12jFE5jJhyOLmFyF
 OHwYKr379j2UtppwBVm7rulNALnWzIdBDKRQ9zsq2VjzB5u6j161eZ/jb+H83VHamYBq
 T2wRlN+fegYqP9YSULAGmCCS7OK+ScGGoKwGH82GYVGmjewCHiSVXIsJOU3a5OGOZ4Np
 KjTipPxnmS9QG6+aJhoMlJO/0nlPlOuMwxg6mr6iJnYSt8n7l4F5GsQInnbduHG45m6F
 Q8R6vSMqMdcDwzNGiS1gQQrKDNzGuDdZ6OLYyjbbESi342F3ZU4r/kK0yckiDb7FsrLP
 0Mjg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Jsl68sii
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next 07/10] idpf: add Tx
 timestamp capabilities negotiation
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

Milena Olech wrote:
> Tx timestamp capabilities are negotiated for the uplink Vport.
> Driver receives information about the number of available Tx timestamp
> latches, the size of Tx timestamp value and the set of indexes used
> for Tx timestamping.
> 
> Add function to get the Tx timestamp capabilities and parse the uplink
> vport flag.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Co-developed-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>

Reviewed-by: Willem de Bruijn <willemb@google.com>
