Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B88228C0EC3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 May 2024 13:16:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0097F60748;
	Thu,  9 May 2024 11:16:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pb6NWBPD2iNC; Thu,  9 May 2024 11:16:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7BBD060699
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715253375;
	bh=AFuUqAbs5MXoJpctNR4nsrfOq1ZqzqbPUpmX6ZjWvEY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QMmFNOCuhKdwkRb+77TFJKlSUdw5D4MjI6wqdDRxK9KB6gWYcbDtJBfv/Sthv4/W/
	 7vgk72EvYh+J9udBjQzZnasWNalDwjdnLtuqhNuOqFmWT62A+ONdocJ/ADo9LWZqJL
	 93cdzZ5HJt5jtJLQpQauHVRT05IMeyGVz1qlV5nyw24fszGdtD1HCUOXkPnGFU42jc
	 Gh+t7nYuuFl3RsN3Cw9T6Zm0M3iLUKkBiKFhcddseNMGakh1R0/yzAC0/vIAZY1/Ah
	 IbKiLkbPrzwNO+eZwvlDPlKxjDuVDN7yhA95ig92NcvNDVMqnoOLdNdvkaO4Rr4Nu/
	 rMRFNrjG45nkA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7BBD060699;
	Thu,  9 May 2024 11:16:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A9D341BF361
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 11:16:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A236960709
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 11:16:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r9l19xJnKBM0 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 May 2024 11:16:13 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::22b; helo=mail-lj1-x22b.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 25C4560699
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25C4560699
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 25C4560699
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 11:16:11 +0000 (UTC)
Received: by mail-lj1-x22b.google.com with SMTP id
 38308e7fff4ca-2df83058d48so9089681fa.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 09 May 2024 04:16:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715253370; x=1715858170;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=AFuUqAbs5MXoJpctNR4nsrfOq1ZqzqbPUpmX6ZjWvEY=;
 b=ONMVt6SkqQrYJYNOGo5XkOP+f1K56BV59KaEdYaqcgZS6VGFaz1ef/SjwIfcFapLqM
 8tm+pf8s2gynTIoa3jC5vAGbTyzX+17Udhb8OFnSkuMk4GdAsoujmh5JXT+O9OMqwKvw
 0Qp/tRKlaAV5HpgTeZpxVfaMinaK/0WQGH7afuTrMIoBLhEy2W9Pdq11NLecbbo9+wf2
 5xF8OzVtax7a03R7OajICOkcKElSC8UI3CzORgDGGNovThgoSGJDENoL6WMrziHa3Con
 X2THmIHnvYll1IsnN/1bNA0voJOgjl4bb/zmDL+vN3twatjM1bUCex09H4lnFfbLbOzX
 /QKg==
X-Gm-Message-State: AOJu0Yw8NG8gvhMTsUD0xMo1ogSaC9N7THMYzn4ZCFCLGV/cNuQhsWzm
 UtqpQeNzQcSAZULob6lg7fzaO51GAvL2iwMehKWGwFCVflLKwZB0nTSUbrN5Ghs=
X-Google-Smtp-Source: AGHT+IGm6muKgNQz+Sq946eF9NxhstzvJKt8rFmW5lH/znHG9AqgwH6mHrZMxiX36JRtGjK5Ttz65A==
X-Received: by 2002:a2e:a54c:0:b0:2e2:a0f0:4e74 with SMTP id
 38308e7fff4ca-2e4477b4e16mr41683101fa.52.1715253369473; 
 Thu, 09 May 2024 04:16:09 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3502b8a7826sm1425094f8f.52.2024.05.09.04.16.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 May 2024 04:16:08 -0700 (PDT)
Date: Thu, 9 May 2024 13:16:05 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZjywddcaIae0W_w3@nanopsycho.orion>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
 <20240507114516.9765-9-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240507114516.9765-9-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1715253370; x=1715858170;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=AFuUqAbs5MXoJpctNR4nsrfOq1ZqzqbPUpmX6ZjWvEY=;
 b=q8ikanSRPvwL+PKt9yLshQLbbfXT3KA7EjiVZ+9cSGa1UHZt3pWDw+6hofGkEoH6Q3
 QOcAEIfk8AK43jycC9WGoSrhWwZuZlp+nhlUVJqT+6jVgrsgS4Bb1xVBM1BHpnv7gps0
 u8hP//HXr1KZycdsuW6kOQfGzkPYz0NRvjPHlSy7fA0YVeliFam1fe8L//cjcRlZRVks
 X5JS8XnKw8nxzvpb1PBwSdw4XccUm56CJCybRc0AeY/ld9c+sRKLuZra0VAoF7PQZxuv
 de1nAQpyUL0oXER65obhhIiKExRnQK1V6PSpBDSoJcbdUSVVrkxgveB1c0TVx7cKgRQl
 bBJw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=q8ikanSR
Subject: Re: [Intel-wired-lan] [iwl-next v1 08/14] ice: create port
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, May 07, 2024 at 01:45:09PM CEST, michal.swiatkowski@linux.intel.com wrote:
>Store subfunction and VF pointer in port representor structure as an
>union. Add port representor type to distinguish between each of them.
>
>Keep the same flow of port representor creation, but instead of general
>attach function create helpers for VF and subfunction attach function.
>
>Type of port representor can be also known based on VSI type, but it
>is more clean to have it directly saved in port representor structure.
>
>Create port representor when subfunction port is created.
>
>Add devlink lock for whole VF port representor creation and destruction.
>It is done to be symmetric with what happens in case of SF port
>representor. SF port representor is always added or removed with devlink
>lock taken. Doing the same with VF port representor simplify logic.
>
>Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> .../ethernet/intel/ice/devlink/devlink_port.c |   6 +-
> .../ethernet/intel/ice/devlink/devlink_port.h |   1 +
> drivers/net/ethernet/intel/ice/ice_eswitch.c  |  85 +++++++++---
> drivers/net/ethernet/intel/ice/ice_eswitch.h  |  22 +++-
> drivers/net/ethernet/intel/ice/ice_repr.c     | 124 +++++++++++-------
> drivers/net/ethernet/intel/ice/ice_repr.h     |  21 ++-
> drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +-
> drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   4 +-
> 8 files changed, 187 insertions(+), 80 deletions(-)

This calls for a split to at least 2 patches. One patch to prepare and
one to add the SF support?
