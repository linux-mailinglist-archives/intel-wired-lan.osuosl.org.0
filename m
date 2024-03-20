Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F785880A82
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Mar 2024 06:02:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1158140800;
	Wed, 20 Mar 2024 05:02:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F2I3-mEmGfJR; Wed, 20 Mar 2024 05:02:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 356484075C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710910921;
	bh=S0B7vWKH9/N5Rr83D0ntmMC2zkFMIdP3Ld+bd82Q6BI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2OqEetlN9MHwgiUVoLcLiPvWlB+FbHDC6E6sUld2yqDdbaUMda3fSFeZx+jCGJOjn
	 G3IWcWIkjLhJrdlE6NW+RFOp417o4uNWXehLr1cpUJpnU6ao3o4zEOaU+tdZ4WSLQC
	 dkw43rmIACQW18eCiHTwCn4iPXy0lPEXVarrJk/D3M4KkOVNHweARcIc40U6bewLun
	 FrBiI/q/ytPTvHoKVJ4KsmwJr1ztGA04hjJLVW+Hhd/N2rasyw5F4YVQusv6dcIRB9
	 mIbZCbCxjx8SbWm60P1jhDvyCOEVDSqf6x3eqI2Aq3ieL6YPklGhHCXuATHkATZHih
	 OSid6IKOkybGQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 356484075C;
	Wed, 20 Mar 2024 05:02:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E2551BF2CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 05:01:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 95DE4407F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 05:01:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id voW2JT3hDVbT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Mar 2024 05:01:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::334; helo=mail-wm1-x334.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6372F4075C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6372F4075C
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6372F4075C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 05:01:56 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-41409fd8b6bso27474065e9.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 22:01:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710910914; x=1711515714;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=S0B7vWKH9/N5Rr83D0ntmMC2zkFMIdP3Ld+bd82Q6BI=;
 b=f9qaw2LMA4sGlccCb4LibDMLwcpwuMMaJ5I9D5TO3nN19IAuwg5SwfVosIqGQnB1KF
 +Eioo96JHuU9d32iAEAvfW99vpJHHGRRflEmEOm7Egfv1AFQvfNJjzcbEAzzSIKZhQH/
 Uz4CxyzFWzqc/jUSLXovrW/swhulTqDed0YyaXf4ZJHVa0T1web1jK2BCO0ktdzfbviP
 NRQTuV7EzT1krkOfYwbmDHXTdVzy6XZI6+RzmgEz3/R8ho/c7OVw+I01FMUJbIeYeChS
 UW9/xw4NTs6gty85ABeF+aVPsJsdvGk53F9vJ5G3y5CSOTCnzjACtNMRqHG0v4eZYmpz
 T6aQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXNCEngCsUDaYczWQ4Vre9+XIczJZ4a7BSuqxaIq49ijyxhGi1cn02depm8mEDR/AOm0HooMxjxZaGialcKQox0ED7fMFDGosbfqSc3PI13jA==
X-Gm-Message-State: AOJu0YweoWvCO388WYQZcWhmD6Zj2AIBY3yYvwq7yp9OKbYXM24C14QC
 75SzRkzqC0hcIjeRioAdH7H+muE4jnWaFxhkgyyMznaRmj6Ka7FZx9BP+rad9Jc=
X-Google-Smtp-Source: AGHT+IFGGKSK87rcnJmgzexq+3rYiVKaJtZ99H0a3zsNHEKEaF3v2b0OfuXy/cpjUcYbMSTlWTKjgQ==
X-Received: by 2002:a05:600c:3546:b0:414:ca1:6531 with SMTP id
 i6-20020a05600c354600b004140ca16531mr833716wmq.41.1710910914424; 
 Tue, 19 Mar 2024 22:01:54 -0700 (PDT)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 s14-20020a05600c45ce00b00414618bea7csm893210wmo.37.2024.03.19.22.01.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Mar 2024 22:01:53 -0700 (PDT)
Date: Wed, 20 Mar 2024 08:01:49 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <facf5615-d7ac-4167-b23c-6bab7c123138@moroto.mountain>
References: <77145930-e3df-4e77-a22d-04851cf3a426@moroto.mountain>
 <20240319124317.3c3f16cd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240319124317.3c3f16cd@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1710910914; x=1711515714; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=S0B7vWKH9/N5Rr83D0ntmMC2zkFMIdP3Ld+bd82Q6BI=;
 b=RVLK3orhLOpTQ2fuJ0M5Px5g030gK3qro+doLpXReVkD5tQGz1m1/1bXRTGZVm8Qhh
 Vc4ND3LeMZAKpUKTxyNloyoND0sNW5cgxltUqnudWcGtedngL2B8btqcLp0AJm8Y3681
 12kMLRfH99Zv26vpFGaNbrwPOfXsHK34OYHO5hf2/23mwBc5jQCssiJQttK7OBZZj7Ri
 j7pobO2I+eCTYeoHpcCJvH7Jgs6xr6qM3/+ouOCAsY0+pQrFqF+UuLzSmffEslQU080m
 +hChjx7T8b9WYMULQ4FXoAgmJO30vj9QAoOwhqJqnudSH20bxMyB17DJ+sk1kuqhwZVv
 D8SQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=RVLK3orh
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix freeing uninitialized
 pointers
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 19, 2024 at 12:43:17PM -0700, Jakub Kicinski wrote:
> On Sat, 16 Mar 2024 12:44:40 +0300 Dan Carpenter wrote:
> > -	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
> > -	void *mac_buf __free(kfree);
> > +	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) = NULL;
> > +	void *mac_buf __free(kfree) = NULL;
> 
> This is just trading one kind of bug for another, and the __free()
> magic is at a cost of readability.
> 
> I think we should ban the use of __free() in all of networking,
> until / unless it cleanly handles the NULL init case.

Free handles the NULL init case, it doesn't handle the uninitialized
case.  I had previously argued that checkpatch should complain about
every __free() pointer if the declaration doesn't have an assignment.

The = NULL assignment is unnecessary if the pointer is assigned to
something else before the first return, so this might cause "unused
assignment" warnings?  I don't know if there are any tools which
complain about that in that situation.  I think probably we should just
make that an exception and do the checkpatch thing because it's such a
simple rule to implement.

regards,
dan carpenter
