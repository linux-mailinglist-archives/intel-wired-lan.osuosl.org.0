Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 630C3A2C835
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 17:02:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 734A840D5B;
	Fri,  7 Feb 2025 16:02:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sjbnwAWIWQ1x; Fri,  7 Feb 2025 16:02:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76DB040678
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738944157;
	bh=SAfShQCSiMpGrNIkbzXuL3EXPLqdZooW7wqPfpnyAmY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6aC+pPKWu/oN35CisVumpQ2bCtZQobp9G+Hzl2prXaJBXy1IRCdjNeRdkOEBHrRAi
	 VxKKJO2Jf3zdpc1q+S4InlbrONHKnlY8TAflXXtPYmSInQf5//oQLgZR45ncCPWtCa
	 GtTJIXJg82JOD70F1RXg78PUGjBt2Rhu0D38tILL9XyBLCr50yaQGfAeEsdMG7hwQ+
	 QvhXVONRFWdziaxTtZe7jcM4FefcMa7IU1a7UL2j+qk8w13IyvZ6FgWUnq5cUKnGcY
	 SxJJoujI+vY5fON3bPUdzc3um93YTbc4OlKwMs3P+W94ZN/65Zh45A1ol1yfuDA7l8
	 qYbzVrWnaMDOQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76DB040678;
	Fri,  7 Feb 2025 16:02:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4FBD3CF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 18:57:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 338028485B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 18:57:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xuXS-Rl04v91 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 18:57:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kees@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7E5C2847F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E5C2847F2
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7E5C2847F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 18:57:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6A98D5C6FC0;
 Thu,  6 Feb 2025 18:56:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDF58C4CEDD;
 Thu,  6 Feb 2025 18:57:20 +0000 (UTC)
Date: Thu, 6 Feb 2025 10:57:20 -0800
From: Kees Cook <kees@kernel.org>
To: Simon Horman <horms@kernel.org>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Konrad Knitter <konrad.knitter@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Qiuxu Zhuo <qiuxu.zhuo@intel.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Nick Desaulniers <nick.desaulniers@gmail.com>,
 Jiri Slaby <jirislaby@kernel.org>
Message-ID: <202502061056.162506F7@keescook>
References: <20250205104252.30464-2-przemyslaw.kitszel@intel.com>
 <20250205204546.GM554665@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250205204546.GM554665@kernel.org>
X-Mailman-Approved-At: Fri, 07 Feb 2025 16:02:35 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738868240;
 bh=TPePmZCPXcaG0UTSmZ9q5V7OsD2otJ6zxRyMZF5OM+w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZvxDa2jd0aw9H6IdLUba7cozMJTmnwaTZZlm8NR+rtXnMLrswhrC5B/1qGIifTS9W
 aXS/r1srr1JfeBBsvjY9Wkcc/vtL3qzzmXooJs8+OfpMmaXhIP2RmH/IhlHUbwZhHZ
 aX4f9AbpDluW45geDsrauPMkJklmflYgNbLapZMX8qLBZA0g2acFVPMczuK3ObVjhW
 9a8mgE6Pwc3q1YHifry+olZsk529TBbR+JVyDyY4EOiA8/gPIJk+qK5ANSvvtC0r7F
 mdTs8QO5LxHVicFpq+5vRGLWRo6JP+53aOElwkSdyIeJ3CxB9FCpbksNg9gA63UPMf
 d4Xt5uDRA1yQQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ZvxDa2jd
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: health.c: fix
 compilation on gcc 7.5
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

On Wed, Feb 05, 2025 at 08:45:46PM +0000, Simon Horman wrote:
> I ran into a similar problem not so long ago and I'm wondering if
> the following, based on a suggestion by Jiri Slaby, resolves your
> problem.
> 
> diff --git a/drivers/net/ethernet/intel/ice/devlink/health.c b/drivers/net/ethernet/intel/ice/devlink/health.c
> index ea40f7941259..19c3d37aa768 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/health.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/health.c
> @@ -25,10 +25,10 @@ struct ice_health_status {
>   * The below lookup requires to be sorted by code.
>   */
>  
> -static const char *const ice_common_port_solutions =
> +static const char ice_common_port_solutions[] =
>  	"Check your cable connection. Change or replace the module or cable. Manually set speed and duplex.";
> -static const char *const ice_port_number_label = "Port Number";
> -static const char *const ice_update_nvm_solution = "Update to the latest NVM image.";
> +static const char ice_port_number_label[] = "Port Number";
> +static const char ice_update_nvm_solution[] = "Update to the latest NVM image.";
>  
>  static const struct ice_health_status ice_health_status_lookup[] = {
>  	{ICE_AQC_HEALTH_STATUS_ERR_UNKNOWN_MOD_STRICT, "An unsupported module was detected.",
> 

I'd agree that would be the preferred fix. :)

-- 
Kees Cook
