Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 606A1901184
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jun 2024 14:55:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DB1981A3E;
	Sat,  8 Jun 2024 12:55:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v5uoNIWMHai5; Sat,  8 Jun 2024 12:55:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 704F581A6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717851338;
	bh=StifVupC0SVtBndAFPEUgv7vCScbxdCq+k1GQQlTERE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Lni4QLqgs2kOMOO3r9HhDnYK0aRgLakKhnbRhkLHy8/HwkzbfMs2B03yfP2l2MnsI
	 jlbcHoO+RwZKcLqNgx4UzuM9d7X0pHUZuE/3rsTcCmrS2ygitCbK/HOhpcGgJ8E2lp
	 oD5LsCUwvCu/SzRKwvRLrOm+shHZsgUtX9cya6Nz1g9hIHxGiuIAQTY8N7tFKK7DOr
	 7GnyVTnuryoBAm7mydjGq95+7E4QLhVZIpvVauTTVW21TjbXS3Lrc7/6R+lNCzd19L
	 pY5Z5E+4E0ozckYH6DqLtqno+aitfbafTHT1QGkSpb2UwqeQxehIfx2OvvaEDDTp8h
	 i07U7NY9MxkFg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 704F581A6A;
	Sat,  8 Jun 2024 12:55:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C735E1BF47E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:55:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B19E6426DC
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:55:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9q6eUtXr8N1w for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Jun 2024 12:55:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CF6CF426DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF6CF426DB
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF6CF426DB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:55:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 28142614C9;
 Sat,  8 Jun 2024 12:55:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C59FC2BD11;
 Sat,  8 Jun 2024 12:55:32 +0000 (UTC)
Date: Sat, 8 Jun 2024 13:55:30 +0100
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240608125530.GS27689@kernel.org>
References: <20240604131400.13655-1-mateusz.polchlopek@intel.com>
 <20240604131400.13655-2-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240604131400.13655-2-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717851333;
 bh=9KLc5ZWRKVzzD/hO+CFXAsPG5/vZtKSbef/xgGiW+6M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B/nimq3PGfrD4oEsSVvQ6yJVKPXKAcKFnJ3JEJ47B4AJJ3JjXsXWM+lmOB9w/dYSa
 6aj9TT3i+i+yfC1Ztk1DP/ntzmiem5sXpbsmGkzDDhC2EZIJLH4CsGHTEy4o5zqxv4
 W0aGY9ykTNXjExOeNtD7QA0vja3E/YWNlYDw958JIUnZBp9v9s/H0C/ooIOqOxg6z5
 HX6x75I8cFq9MhXeiy599noN8XUy7z3nUS7UNiq+Z/0Pih4GJvxW+zM/RN2mW92Dd5
 bEEjvsxb5Q7FKVoGQWR0VDvMJj4ICmJek1iIfj8nPX5MvS0E4473jIUyX9suEFRJtm
 9K/cALe3cko3g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=B/nimq3P
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 01/12] virtchnl: add
 support for enabling PTP on iAVF
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Wojciech Drewek <wojciech.drewek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 04, 2024 at 09:13:49AM -0400, Mateusz Polchlopek wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Add support for allowing a VF to enable PTP feature - Rx timestamps
> 
> The new capability is gated by VIRTCHNL_VF_CAP_PTP, which must be
> set by the VF to request access to the new operations. In addition, the
> VIRTCHNL_OP_1588_PTP_CAPS command is used to determine the specific
> capabilities available to the VF.
> 
> This support includes the following additional capabilities:
> 
> * Rx timestamps enabled in the Rx queues (when using flexible advanced
>   descriptors)
> * Read access to PHC time over virtchnl using
>   VIRTCHNL_OP_1588_PTP_GET_TIME
> 
> Extra space is reserved in most structures to allow for future
> extension (like set clock, Tx timestamps).  Additional opcode numbers
> are reserved and space in the virtchnl_ptp_caps structure is
> specifically set aside for this.
> Additionally, each structure has some space reserved for future
> extensions to allow some flexibility.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Hi Mateusz, Jacob, all,

If you need to respin this for some reason, please consider updating
the Kernel doc for the following to include a short description.
Else, please consider doing so as a follow-up

* struct virtchnl_ptp_caps
* struct virtchnl_phc_time

Likewise as a follow-up, as it was not introduced by this patch, for:

* virtchnl_vc_validate_vf_msg

Flagged by kernel-doc -none -Wall

The above not withstanding, this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

...
