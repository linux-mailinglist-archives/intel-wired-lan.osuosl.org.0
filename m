Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A43BA4A0F8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 18:54:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36B4A80870;
	Fri, 28 Feb 2025 17:54:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xOfQoKVkirVG; Fri, 28 Feb 2025 17:54:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8CE8F80B73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740765272;
	bh=MVdN+Ynhk6hW0AoqcVWiXQSRY77vMUQ2esikVFNpBsA=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=soWgpu8kuQjDqQ2IILW9PUA8kecFWyfVbi0rgMOC8zeyoX+3qEbzc7w6nEclXKcro
	 RTBCHJ/UnzlgRfaRLOkzx/uzXboUbaU2a6UWNtHyawHXR/Q1sTqhnGDTq3rug+Jsf1
	 0V9/QWGMZycxjlsoThJziqXjA33fEIfPVHpM06bcwIAss5Ko/5R+GAvwvy4GRclGrE
	 VJV9QGkE4IEcF1hbpoed+nABoFjrcsg57zQpG/t2CeAuLih7laJ1EJNEn2tokmyQGR
	 /9GZGAlPZkzvsiSd25kL/ztOAsQlx14WCvyZBbQ3jotvEDDxd9D435QxfWV/fmanQp
	 YRZhtQ2hK/xJw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8CE8F80B73;
	Fri, 28 Feb 2025 17:54:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 868271CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:54:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CCB5E81145
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:54:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZsE2QOteWT2O for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 17:54:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::631; helo=mail-pl1-x631.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3E2BD82107
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E2BD82107
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3E2BD82107
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:54:29 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id
 d9443c01a7336-2212222d4cdso5015ad.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 09:54:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740765268; x=1741370068;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=MVdN+Ynhk6hW0AoqcVWiXQSRY77vMUQ2esikVFNpBsA=;
 b=lehsD7Jux7yHfHoTYiPXqnde4VuTi9wjxzlRPMVz9KFNxFO4cxLc+LDsSAz7UGnFuM
 uMLKs0HQRd80bcCKhXTiGiSMgr2T/JJwZfGPdO2mBmutIld8EqapairBpZLYryhgSoSy
 PPcNP+aS7x5pbmzT4H9b09mf4X8ot2usdY6mbscjLTf93Xsd8H6CWf7BoQkCCaAwf2XG
 CQNFGKb8c36m7HyDIKD6QniF2csReixbLO7x1Ae+jr6eMs9uPE/JG4Ki2MjrUhRtEU31
 5NJBtyRUB49A9Z/gq0stdPU00eVGzlZ0QwCyZ5t2k7Q1aTaxBvl6oeiQy4cVM38+xTXS
 H68Q==
X-Gm-Message-State: AOJu0Yx0kk/V6efYGPaqU07ybhj6oyHU/i3HD43lv1ExtIP9yaiJX0RW
 qMrRkn6xQQejdnupPFnsGM3znyV+Jprzi9bjGAPwxjbXJ5D0AzQh7PCQbJnYpTKL2/ytzGf9+o3
 glCo81efl1OXrIEHxW2LEaQpzeg3g6UBRKOWu
X-Gm-Gg: ASbGncuL9NbZSpEvHymc7X2/CueT1KkbIQZE4LYhiLWVJI1rQlfY1Z4FRGx+rWx5Zq/
 jn3Iyx3iFf2Hfscn0jawCvu64I6ZfGZsvhZf4h0ZGkExXnEFqq6I8RRlpeywiu87bySCWdzgOSw
 0iZb8stPSZDNFwt2FMOqhEbKqe73Lbs797dzAjBw==
X-Google-Smtp-Source: AGHT+IEi1GJa1ouQSpWyrgEKl3mQ6/UYlJL5ka9pnQRHnSVcZgLz6o9DsV78DeV0jZalRPXA4hRIE12rVD6V9nVNKoI=
X-Received: by 2002:a17:903:22c2:b0:21f:4986:c7d5 with SMTP id
 d9443c01a7336-223696de7c2mr3116025ad.8.1740765268370; Fri, 28 Feb 2025
 09:54:28 -0800 (PST)
MIME-Version: 1.0
References: <20250227131314.2317200-1-milena.olech@intel.com>
 <20250227131314.2317200-4-milena.olech@intel.com>
In-Reply-To: <20250227131314.2317200-4-milena.olech@intel.com>
From: Mina Almasry <almasrymina@google.com>
Date: Fri, 28 Feb 2025 09:54:15 -0800
X-Gm-Features: AQ5f1JqXlAdHVmjzPkKtVSp2C3uZIGoF9V5WQHlbifvqRCMBHA7nvr1Tvs3T_Ew
Message-ID: <CAHS8izNAVdzjA=pve2nhk+zvYgsTgWAcrUBCJo8JEguBrd9DRA@mail.gmail.com>
To: Milena Olech <milena.olech@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Willem de Bruijn <willemb@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1740765268; x=1741370068; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MVdN+Ynhk6hW0AoqcVWiXQSRY77vMUQ2esikVFNpBsA=;
 b=n8Ts7fNju/QmkdlWuxbEYjpI//4vL2DqtzBLmvfJwM8cQw1PBTOLv1dOwtOWRXiGmL
 PPR+8N8bJPw9Lk87wJGfqovZjC7yEEtL8kYPH8qj0j+C0jlLfJ3zNN2cK5s9NbJSYrlV
 5yKQLlIr3LugLMyIHD0m3JO4DUeiOg3FODVd7dHzHoSNiwevW1pS+LUGzCyDgb1OhMKy
 T5PsdlW6lW2I8Od2IwNfmKDdcbwm8g72o78w/wo9F9kHxH+zk0rIBGq8RfwN1sloiYd5
 lQW+hgdRwJvFXsAD6YspAXS33OO/4SlEzsz3an05ptohKpjd5JbHWM2VeoLxmj6J/iMR
 WvzA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=n8Ts7fNj
Subject: Re: [Intel-wired-lan] [PATCH v8 iwl-next 03/10] idpf: move virtchnl
 structures to the header file
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

On Thu, Feb 27, 2025 at 5:17=E2=80=AFAM Milena Olech <milena.olech@intel.co=
m> wrote:
>
> Move virtchnl structures to the header file to expose them for the PTP
> virtchnl file.
>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>

Tested-by: Mina Almasry <almasrymina@google.com>

--=20
Thanks,
Mina
