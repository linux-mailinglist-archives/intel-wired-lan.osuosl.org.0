Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D0768FFE1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Feb 2023 06:31:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C5F560DED;
	Thu,  9 Feb 2023 05:31:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C5F560DED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675920680;
	bh=5ybyrIRdLYkvJcQ0ARpHFpjLM5iSWI1Nc0JfFzP87ao=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WnI0Ug4V8USXD84dQHtM7hIudjKLfnLGqesDjtiAqDvQN6hFigsuOHEGsWpqsJq+R
	 8F6Spb91Z7im2IcvDfQDXTY0AYOY3vMz4GWvG1xZCnyqHrqMGAU4jDRTDGvwmR9YCh
	 EqzKOGfGuZDWohJwVz21mh+TklFgGqrNGSKexTu9tQVTAocnGaXF4fVH9EiTe5DYzS
	 k5qP8MSQXEtkO6e0ipo9gK5gwMxQGeau5BV2g1T7HdMoSAiODnZeE1APt6ys1oLBwx
	 7e017z96nniDETs4C9s8mhnwb7fL7MHFc6C+8qWjrM58TEOfPjjMed4i0lS11cW/D4
	 gd0Et75GxCw6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9GEzjJmIFz5H; Thu,  9 Feb 2023 05:31:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2823660BBF;
	Thu,  9 Feb 2023 05:31:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2823660BBF
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 751AA1BF3CA
 for <intel-wired-lan@osuosl.org>; Thu,  9 Feb 2023 05:31:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5B64A4051D
 for <intel-wired-lan@osuosl.org>; Thu,  9 Feb 2023 05:31:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B64A4051D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8zqPsqF0ySPc for <intel-wired-lan@osuosl.org>;
 Thu,  9 Feb 2023 05:31:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D265440393
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D265440393
 for <intel-wired-lan@osuosl.org>; Thu,  9 Feb 2023 05:31:13 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2840161919;
 Thu,  9 Feb 2023 05:31:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03300C433D2;
 Thu,  9 Feb 2023 05:31:11 +0000 (UTC)
Date: Wed, 8 Feb 2023 21:31:11 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20230208213111.711d8337@kernel.org>
In-Reply-To: <20230209022924.24154-1-muhammad.husaini.zulkifli@intel.com>
References: <20230209022924.24154-1-muhammad.husaini.zulkifli@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1675920672;
 bh=vrmRAjrrpDp7hQnAEVAjCNEQyzIG3wdZxcVW+wmRqSw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IYRN63LSPsSdv5ytVoplOZaJQeccUm8xgJX8J3qnavJId1in55tKQD6aDbiOrCu7C
 pwmLT+ihJ5UDslVDNHlDweZTLtUfwgzfX/DNZbvwvyqskEc570T1LEx1C6eQSTtKel
 0U9WAlRCLzfOF1l9EbIbz4p6kazRFpaJHhBXr6OoYeAtEa3aeeihgdAB6QJ206cuxE
 LbaSc3N2SP7pff/eG0DTbqMW/DZokiXFLfzOSdESaK/O0epDZfkAPXa6h504Qu1xvL
 x5yXaUy+S/3oH76dUQeIXJMAmqVWJq1+pGqNLPBHwpgB4LkMfJQE5YU0CisaPi0C61
 Ug2YGzeqQfthQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=IYRN63LS
Subject: Re: [Intel-wired-lan] [PATCH net-next v4] igc: offload queue max
 SDU from tc-taprio
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
Cc: leon@kernel.org, intel-wired-lan@osuosl.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, pabeni@redhat.com,
 davem@davemloft.net, tee.min.tan@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu,  9 Feb 2023 10:29:24 +0800 Muhammad Husaini Zulkifli wrote:
> V3 -> V4: Rebase to the latest tree as per requested by Anthony.
> V2 -> V3: Rework based on Leon Romanovsky's comment.

Eh. Comment from v3 apply.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
