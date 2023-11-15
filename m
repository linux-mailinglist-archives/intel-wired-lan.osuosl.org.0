Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BD17EBF5E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Nov 2023 10:21:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 709D2420E4;
	Wed, 15 Nov 2023 09:21:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 709D2420E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700040098;
	bh=jUh84mH+YB0IMdvXnelECZDMTjgTFzjk2kuLCHWE/I0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YOH4IhEpj2xwOFJmZru0vElvro4OyZNA6/mh6WCzoZO5tfM5eDypyapel6wOlDG20
	 uUBvHLh0i7Dx7Q3Z3DHpUtXdk5+r1slcehmksmme8f3igfCGnNYITCAtY+CWiEfZIy
	 5FdSk0d/oUAaIif/q9iWSVjS2FeK0mPdziJt/qVNnlF+ZuKlWQLhUdhrTB+1SdGai/
	 vnsW3J5CiZ8ocISmGYVgQMEjLJjGthMZzuO2D55Hbuy0qmNsgRxY3oMuzd9VtZomdE
	 eaw6mRptrql4X6dKQ9GwrJ8pDD4f18ndjT1zR+10MwhUuv0IOLIQrJlo9aEqwgM5xI
	 AD7wAV3/YX+3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LWY7_JyGDlgu; Wed, 15 Nov 2023 09:21:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3070341FF4;
	Wed, 15 Nov 2023 09:21:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3070341FF4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 760841BF307
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 09:21:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 585A4403EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 09:21:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 585A4403EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A3uQkFz-ZKru for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Nov 2023 09:21:30 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 11ECE402D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 09:21:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 11ECE402D0
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D9A6D614BC;
 Wed, 15 Nov 2023 09:21:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8FABC433C7;
 Wed, 15 Nov 2023 09:21:25 +0000 (UTC)
Date: Wed, 15 Nov 2023 09:21:23 +0000
From: Simon Horman <horms@kernel.org>
To: Kunwu Chan <chentao@kylinos.cn>
Message-ID: <20231115092123.GI74656@kernel.org>
References: <20231113093112.GL705326@kernel.org>
 <20231115031444.33381-1-chentao@kylinos.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231115031444.33381-1-chentao@kylinos.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1700040088;
 bh=YSG65mEwUsCzKp+XWir268MP8D6kMHKJTS4saUD+Jn4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NmJpyZYGAGemaFpCxUSUHh1i4xfKqtEFvhp6NkPsroYrkJhbeOqtuLnGsdnlw6I3l
 EruFYLCLblejqHVsPWY1KuJsm1pQCLVEMlU/HacH+vOYm1GSUpPM61LR8aT8AoVzI2
 6iWySZCwbEwSpz6v7MDz4TG2lUM5TN4lMpDybsk+ySXrGOGax+MAts+Lhf41FCjdwM
 7GYAVRhevwZMpTFu1aIsUAxpWgtUcIYekl5WDk7S7pHIZ1jZeoVCIYnHFFbZb1BsJZ
 gIgeznV9fI/C0alZfSd0QVNNlT4j30PWYuuwqzPj1OKUkexjmf/KPJHR7a6nF6f6ZW
 BAaAQyBY7IlaA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=NmJpyZYG
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: Use correct buffer size
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
Cc: kunwu.chan@hotmail.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com, kuba@kernel.org,
 anthony.l.nguyen@intel.com, pabeni@redhat.com, davem@davemloft.net,
 shannon.nelson@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Nov 15, 2023 at 11:14:44AM +0800, Kunwu Chan wrote:
> The size of "i40e_dbg_command_buf" is 256, the size of "name"
> depends on "IFNAMSIZ", plus a null character and format size,
> the total size is more than 256, fix it.
> 
> Signed-off-by: Kunwu Chan <chentao@kylinos.cn>
> Suggested-by: Simon Horman <horms@kernel.org>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Thanks for the update.

There is no need to repost because of this, but in future please keep in
mind that revised patches should:

1. have a revision number, e.g. v2

   Subject [PATCH v2 iwl-next] ...

2. Have some of revision information below the scissors (---)

   v2
   - Updated size calculation to use IFNAMSIZ and izeof(i40e_dbg_command_buf)

3. Be a new thread, as opposed to a reply to an existing thread.

Link: https://docs.kernel.org/process/maintainer-netdev.html#changes-requested

The above notwithstanding, this patch looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
