Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFD9908A9D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2024 13:02:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14E55610B2;
	Fri, 14 Jun 2024 11:02:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H2joxo9JLT0z; Fri, 14 Jun 2024 11:02:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74C9D606B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718362936;
	bh=VlWlZcyI5f182Qr5UGF0cTtGhSaC/V1U/yemEakMSRs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z8wAVr3+777FdAanabXgrNSsD9+78OwkJN5YBPqGsbWRYNl9FDLh9MNy7rMiXH0Ky
	 mm/dDtcdYU5oFmD1p1vTPH2milemPPwDpClSgzMUGiOHbME1KKcAUk6aaXKlx1xUXo
	 tz5m8aBJWDcyzRFH8Z5y5F28oY54WeUw2nLkPVXczaXNOwgAhd71l1YMXnshxVOIAA
	 4ihb1u7a4vVQo1+S6mOn7cCVyXI9Q1TGTkZD5EqvvJISX7uopQopfVUIJvgEpgxLXV
	 pGco+yCpaDuzmOJiVB3z0CokGgu8K8Izx33fc3lnKbcAJSXC8Ks1JwOg+EYZYOasI5
	 2m3BDVfICwonQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74C9D606B3;
	Fri, 14 Jun 2024 11:02:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B3A0C1BF34F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 11:02:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ADD4B606B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 11:02:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sUxHutYE771A for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2024 11:02:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E7672606B3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7672606B3
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E7672606B3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 11:02:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id D9F77CE2AA9;
 Fri, 14 Jun 2024 11:02:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7ABBDC2BD10;
 Fri, 14 Jun 2024 11:02:08 +0000 (UTC)
Date: Fri, 14 Jun 2024 12:02:06 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240614110206.GH8447@kernel.org>
References: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
 <20240606112503.1939759-13-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240606112503.1939759-13-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718362931;
 bh=RnJBPr5Fe2ENgVCaqQycBFTmEBwFHu1NkFDThcsN9nM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=phFDTQRyhoqYp7wMW8aLdTrfyHDXrIxBJHRBtq5fJEC6EePWYSzAyc9+yclnmY4KX
 eSLclF1HVhCASraxKrNIofnFUg0qeBU6luy9Z3+gLFzyZZ9VDEJ+j/ExT2xLV2oyb1
 aXxesp/i9FZ51iiV1tVEP9cLHFmwWMu/PBCgo77vmWcdPMntNtNURrhi7ewCWPxVLH
 xRAe2H7nB+4iPGly+ukMzFmcheWPkfeR9o2Jfp33iEXYAMN6ZUCLu8J+pphq4kmxHY
 cEemzuvTA1zej8sxBH3KPTTSBqjKm5CEmEoI/msFZHba9tU/d4QZSszX9W2z4ZpON5
 Cg3/WEkVB8J+g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=phFDTQRy
Subject: Re: [Intel-wired-lan] [iwl-next v5 12/15] ice: implement netdevice
 ops for SF representor
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
 kalesh-anakkur.purayil@broadcom.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 06, 2024 at 01:25:00PM +0200, Michal Swiatkowski wrote:
> Subfunction port representor needs the basic netdevice ops to work
> correctly. Create them.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Jiri Pirko <jiri@nvidia.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

