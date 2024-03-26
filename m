Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 427F388C075
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 12:19:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3997260AB2;
	Tue, 26 Mar 2024 11:19:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hKRy7Pj_ghbW; Tue, 26 Mar 2024 11:19:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 843EE60AC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711451984;
	bh=ZixrxqYJPrTlRGSPP1N8PGyvyaSBqmgAPCWqc2abnXg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1FLz9wN6opRQW1pJmp+vRtGPqa1RzLUAJhkSM89ZRbEehovtMfzSzZiVh+wcgls1X
	 FX+61nQnLZ0+1wiZXZz5QRQH8bV6V90FcuR6mMg1FjcL/HnH386fi+BCqcVpFo/TG5
	 ffBhiXym2oAt/G1cYAXE+q3UGFBDzHQYm3t9IOqxQhb7kqA2zG7Z9eJajCG8cUd/Eh
	 hwk8y6/J4HiDeVusazJKojT+huzwGLwO92SDP5zelNCMOO6fJUKQglSeO5vEuVIblj
	 RZKRm+PArdaWaCDP//HkERLkTmbLcOcBiUt8SBbpDqdobVss8TR55NiXp3/wvJGVoE
	 xIBKy10Dv/FJw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 843EE60AC1;
	Tue, 26 Mar 2024 11:19:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F3AC1BF45A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 11:19:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 15C7A81767
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 11:19:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fvgQxAZk-vyp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 11:19:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3604B81415
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3604B81415
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3604B81415
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 11:19:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id D8369CE1C0A;
 Tue, 26 Mar 2024 11:19:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 253FBC433C7;
 Tue, 26 Mar 2024 11:19:30 +0000 (UTC)
Date: Tue, 26 Mar 2024 11:19:28 +0000
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240326111928.GJ403975@kernel.org>
References: <20240325213433.829161-1-michal.swiatkowski@linux.intel.com>
 <20240325213433.829161-2-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240325213433.829161-2-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711451972;
 bh=bNHwSFK5J5KJCN6ynz/h2BWMHs0N01XYMQZfrfLHog0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I6KwdY2/03TrnMP9jFHPP5ZYPV6U8jC9oLs+/9i1cKgocZg0Y5GXLcjXyTioS4xmw
 spjyfXbuYgvI3aUkTKFC5WkyEQvHFgFTbqlxmX4ETUHbGXRtCsOMSjmse31FpKXp3q
 +Sot5nU9xL+vDO6tbimRYzRk/7dOaso/f/tqa3kP46nICIWEYqj02n4tHiq1aPRygz
 AHKSCRi0ns+rECdhrzz8E92LirQxFbu129blxj+9JT3tdv2vw2uhACEI9q2BCqtHHa
 zg/xlAAOjOgJPqkxOEqNqjG0jt2O0ufO6FKBRZY4sHLCPmxtcZ4Ri3oWq039j+uxUi
 okt9uYRdOpD4A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=I6KwdY2/
Subject: Re: [Intel-wired-lan] [iwl-next v1 1/3] ice: move ice_devlink.[ch]
 to devlink folder
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 25, 2024 at 10:34:31PM +0100, Michal Swiatkowski wrote:
> Only moving whole files, fixing Makefile and bunch of includes.
> 
> Some changes to ice_devlink file was done even in representor part (Tx
> topology), so keep it as final patch to not mess up with rebasing.
> 
> After moving to devlink folder there is no need to have such long name
> for these files. Rename them to simple devlink.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

