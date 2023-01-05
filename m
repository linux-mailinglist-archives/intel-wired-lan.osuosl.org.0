Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FAC65F3EE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Jan 2023 19:45:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1ACBF82123;
	Thu,  5 Jan 2023 18:45:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1ACBF82123
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672944330;
	bh=zOmQ9J11KgdQNvKJbFzq9RB2vEzzedRFtvJwGIREDUE=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uo5TSDFB+JCqG+kCWh/1i33jkq1IplFixqDzlqJl/QIgznFiZZ2fnocMwGBO/NW2Z
	 WNxN5IbsRWcEm/p6wPhiVCLXpEswG2ImPwr+Pp5dV7+r0gnQvRwG7xW4lSWJgGOu7q
	 NxoRrjDL8LTJnv5BLqnFkD0xR6c34nyFYC217lm8abbfVEInMrhUA7FXPVGxagaCRg
	 16iGcrIajrwId+nMyZ0qMgkMyMiJnRTgu9K/W1jg2U7S1JDyLCbsae1bAZmaO+WdAE
	 XNF/qPg6cmQTSM3ISsMkd5yJLv7lCncjSMz80JevTo6kYFf8j2+Bh9mmLS4dCNHhim
	 en5XhWq1WEqyQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lLfRVXUSfl7J; Thu,  5 Jan 2023 18:45:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C4F9820EC;
	Thu,  5 Jan 2023 18:45:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C4F9820EC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 790E81BF267
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 18:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 513DF419BF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 18:45:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 513DF419BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wWOyp73T2lGj for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Jan 2023 18:45:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2B54419B8
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D2B54419B8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 18:45:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 7D0E0B81BA8;
 Thu,  5 Jan 2023 18:45:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D058EC433D2;
 Thu,  5 Jan 2023 18:45:18 +0000 (UTC)
Date: Thu, 5 Jan 2023 10:45:17 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
Message-ID: <20230105104517.79cd83ed@kernel.org>
In-Reply-To: <20230105120518.29776-1-mateusz.palczewski@intel.com>
References: <20230105120518.29776-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1672944319;
 bh=Wvox5HO5U/l/+KdMek/+nOY1pCCL4DRB2EMvkbt+Czs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hLExPmDGQXGapRDuaDYLNVrg9nHY0c5GvhqT+rjFjEoQjTc03Fmtu1tCUZCi57JPN
 +Thw8zR0HP/UpS3OBCqNem9YCetLBfTqJAtJNbGoj0EtspEmNzjGUbaHTq1BtsHyo9
 /U/lMFNJMOMApLo5mX9hUu+wKjtOUTEiiZbqpzMZrni11zbKsYI2Ie22uCbCk1TRpM
 H9RhYB5hsiOxomw0yZ7uJ9rSa8AsBnMWwsK+UrP05UbJ9gFXuMmCARiMr8CHHyj0N0
 9cLeLD9Thqt50LEqL0Po4m5VX4uQWFF2qbLbFKMSQdY7UJn1G3ydfLCWw7Sjn7OIxP
 SWUZyq/6EzA7w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=hLExPmDG
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix deadlock on the
 rtnl_mutex
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, leon@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu,  5 Jan 2023 07:05:18 -0500 Mateusz Palczewski wrote:
>  		ret = ice_vsi_alloc_q_vectors(vsi);
> -		if (ret)
> -			goto err_rings;
> +		if (ret){
> +			ice_vsi_clear_rings(vsi);
> +			goto err_reset;
> +		}
>  
>  		ret = ice_vsi_setup_vector_base(vsi);
>  		if (ret)

Why do cases which jump to err_vectors no need any changes?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
