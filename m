Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA16852BD6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 10:00:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA8CE406E2;
	Tue, 13 Feb 2024 09:00:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fY3JWTai6rGV; Tue, 13 Feb 2024 09:00:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14EC44074E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707814830;
	bh=YqUPPNy4GfJSI61OTipqiXkGCm8NPtsO8IerHdBwao4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Fz0p93Q2FwZYnQzBk0UxgnVOXPFtKOnOPvPYa18DWikMCORLH1OFSzCWaWlsFqTqD
	 JhY7gXJb/6VAmuh5Wsd8xIIF0R7tmBD2g3zORmtaNvZmfpHXFm9J1P1RHskI8ju5Rr
	 qL6ayWvyRAmdDgw3tSX4xoSQtw4E2+D6rVCKcbS67iKp15P0AC79LBdrL7LEL5fba7
	 FZKS4hsmKGen6d7rR+2UM3LfhyIkDc7lNZoS/BFMz9KibxxLedsqzgOGXdhspdFs/F
	 W3F1FIHiSVmp+Q9jPpK5pZ4GLmW2wZtxwdDrj+FgULsuFdukAg39+Dkde7U9VPAuL3
	 U81ulzc5VymVQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14EC44074E;
	Tue, 13 Feb 2024 09:00:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E0AB21BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:00:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CCDAA4068D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:00:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bgln7LhC1kCh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 09:00:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::532; helo=mail-ed1-x532.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 55AA2402B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55AA2402B0
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 55AA2402B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:00:26 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id
 4fb4d7f45d1cf-561f5086a1fso405736a12.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 01:00:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707814824; x=1708419624;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YqUPPNy4GfJSI61OTipqiXkGCm8NPtsO8IerHdBwao4=;
 b=VlNQVpCAMHZx0Nsy0X8nvXM8pzlsKhS7u2/33HTZISwJD6+8m9sNdC4sobwVXaxaTm
 ZGQ8G08SvpbGQoP+We/KCQeGBkKhcsTt3a0AgdcBX7RI+OAmF/ouS+hcg0BkFN+zNXSa
 ZY/pRs50oOXZgn+HyXG/JOdY55aG2EmpEKnPR6qAgkBpFFChRSCOtYEqNsuG+UL5//VK
 XRAYcD2vkOQ53GVt3KsOpphX1+l09qOwQIHIWZgBa9mYZJFS5YRevioYfdmX4cefRtAv
 7YVl2DKGwuipVTK8kCnJJ79lQ2MzjybABlW+Vt7fF9r5qtEzsDvzrezQav0rnhPafDLO
 uxfw==
X-Gm-Message-State: AOJu0YyUai+9zOw9TyPgBCX1+t0i+QCdTGmLndM23YQyIabGHMdm2xp4
 /tv5xxRHvDZsHCZRNSuoWWe+9bid8QLVVvtOI7+kSy1EHSyFBBlVrH5khZwirtY=
X-Google-Smtp-Source: AGHT+IFHIu6hhkqL7MIUl/jZbvId0QmL81seiUP4GF2B4jqgYRRfuUByv0ryWqlqCArLmoUyJkvT5w==
X-Received: by 2002:a17:906:d8b8:b0:a3a:779a:78a6 with SMTP id
 qc24-20020a170906d8b800b00a3a779a78a6mr6228652ejb.22.1707814824421; 
 Tue, 13 Feb 2024 01:00:24 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCUrXLjRC3ikr4ferEpmsLtCbYbJ0tiEaLfvRthnmPkWRPjZf2YWMS9qHmyAn2HujsW93A7jnfWCGvfE8I3pEm0txvRGrveBHW276B6iI/JqzkuWvE5M5cuLoYGKCxEH3R8jW2qwsypruPT3VRUgpkAQV/PK8JQcmkL7Q4ywjfJL6mUqZOIkNGFXn+P9FB+Hqsea0COA9K8wAWnJj5APK58dlHsDJS+FoWABXBIBUXoOoHxfacoXt47p79WzNB15bKVn2JFoWGyzfE22RYdGWRQy3ear5OWLl5fWuaObkgl2NUJITj8FqU0pyCfTlOmrugYkLUn7HpYTnVgWNYaBfmXexXu6deoj58zrdkusM/3H4DvCozJqDLII
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 k20-20020a170906681400b00a3bf7a9edc4sm1090078ejr.15.2024.02.13.01.00.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Feb 2024 01:00:23 -0800 (PST)
Date: Tue, 13 Feb 2024 10:00:20 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZcsvpByD9n9BR-6D@nanopsycho>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
 <20240213072724.77275-11-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240213072724.77275-11-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1707814824; x=1708419624;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=YqUPPNy4GfJSI61OTipqiXkGCm8NPtsO8IerHdBwao4=;
 b=ppfb0PdJ1SVPHQvltcR76DKO/u1ULuqJQUuKLo8Rp718Bxkmt0romXWC/08sZg4f/F
 y85ZgRP6ZQN960vt2lAk/90XHwp9p6Ii0blpK+Z6ehqwYhhgbcMd96fELzExaQsBcZ9u
 hlEneVsSLO1rnPVxClTzFRR23B9NSUOPR6f1ZK3Agz1fTg8M/1Gl7DEQGPqbPnJ1wCq/
 f5sIwx1F57d9D6YiuqE7GLwB1TAIFGWDDztwPeS3yLxMuKsmua4PaVBsN8HivF0HlMFR
 cG3sM2BY1rKwared+S2zuo2wmN2C4ne9I1xq5d+ejr5MfUtCaUM8qLBuQ/CKVOxIY4Iu
 0T4g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=ppfb0PdJ
Subject: Re: [Intel-wired-lan] [iwl-next v1 10/15] ice: create port
 representor for SF
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
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Feb 13, 2024 at 08:27:19AM CET, michal.swiatkowski@linux.intel.com wrote:
>Store subfunction and VF pointer in port representor structure as an
>union. Add port representor type to distinguish between each of them.
>
>Keep the same flow of port representor creation, but instead of general
>attach function create helpers for VF and subfunction attach function.
>
>Type of port representor can be also known based on VSI type, but it
>is more clean to have it directly saved in port representor structure.
>
>Create port representor when subfunction port is activated.
>
>Add devlink lock for whole VF port representor creationi and destruction.
>It is done to be symmetric with what happens in case of SF port
>representor. SF port representor is always added or removed with devlink
>lock taken. Doing the same with VF port representor simplify logic.
>
>Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> .../intel/ice/devlink/ice_devlink_port.c      |   4 +-
> .../intel/ice/devlink/ice_devlink_port.h      |   1 +
> drivers/net/ethernet/intel/ice/ice_eswitch.c  |  82 ++++++++++---
> drivers/net/ethernet/intel/ice/ice_eswitch.h  |  22 +++-
> drivers/net/ethernet/intel/ice/ice_repr.c     | 110 +++++++++++-------
> drivers/net/ethernet/intel/ice/ice_repr.h     |  21 +++-
> drivers/net/ethernet/intel/ice/ice_sf_eth.c   |  11 ++
> drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +-
> drivers/net/ethernet/intel/ice/ice_txrx.c     |   2 +-
> drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   4 +-
> 10 files changed, 184 insertions(+), 77 deletions(-)

Again, please split.
