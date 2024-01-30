Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2428425E5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 14:12:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E7BC82F8B;
	Tue, 30 Jan 2024 13:12:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E7BC82F8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706620366;
	bh=H/RTD1RwoRpdXnixtMCfeH2Plmj1QSMcfkNvWENkY8o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J4Wo3VNqR/l8Df0hWev7suKjT0ZhybmAxxOiS2gUMm5bb9h+E2M1IcE+iQ+KIsgIE
	 GHfqebIxsdHd6//qT1UAYKpeAL8PiCYiIwvGudeEYGu//oaENcSu3KWFOctBUWv+fu
	 x69JsMgJsQXQp3YsQqkSPrC3xL321KW7thmhKxHLRkQYnKWKnai0p9nzTOSLOkoWb3
	 AjcDQ90VKP5P7nC1u3A6lgh7e84vY88qAIav69RmFeklrzI4PD3GJUXm1hl3RP91JR
	 SlR0monNe3xydep3HyFPC1TPLlS7O3HzIml6U3Dr8QHwAGjll4p8ljJfNUyWU6WT2O
	 7MuoPVc0bCn5A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MlJRa05agr8p; Tue, 30 Jan 2024 13:12:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81A7382325;
	Tue, 30 Jan 2024 13:12:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81A7382325
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3E5C41BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 13:12:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 173E960BB0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 13:12:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 173E960BB0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T2cSzpExM7-N for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 13:12:38 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6AD1B60586
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 13:12:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6AD1B60586
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 2086360B47;
 Tue, 30 Jan 2024 13:12:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44CF9C433F1;
 Tue, 30 Jan 2024 13:12:32 +0000 (UTC)
Date: Tue, 30 Jan 2024 13:12:25 +0000
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Message-ID: <20240130131225.GI351311@kernel.org>
References: <20240126130503.14197-1-jedrzej.jagielski@intel.com>
 <20240126130503.14197-2-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240126130503.14197-2-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706620356;
 bh=zJEMnhEsbSau/vuSXwKgJowpq9X91ZF4cDUW9NsJboo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UAOV9sw6SVot2WvXcnG1bTk52CPGXM1bXJ1f2iLd3FawJO3fcxwJUvg4xmBMoQp5O
 UuszCIhnoHiScmobd1pXKDc/f9WkqAQK4TG2tekeaH1J4s0SU19aj5HyBieUFPKXFk
 3mBHJkttqMAGvOcQvO3PJ1ODVlFZVlV4tCKhXvIb9G9Rl+tgP7mnWybTwVWzLdsYsS
 JrfGIqr+txvXb6fVcTHR3EX+Wq6AQEXsmEJ3/1YcBHWuF3B1NFr3mFD5aSZqlEa8M4
 wozyBrjOGmREbtq/KAADJT4fBsEPfi1GHq+6hAjSBiuHyKjgbVNk9/HOs5i1saQMEU
 uTcXzJ66gflCw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=UAOV9sw6
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/3] ixgbe: Rearrange args
 to fix reverse Christmas tree
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
Cc: anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 26, 2024 at 02:05:02PM +0100, Jedrzej Jagielski wrote:
> Clean up the code touched during type conversion by the previous patch
> of the series.
> 
> Suggested-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

