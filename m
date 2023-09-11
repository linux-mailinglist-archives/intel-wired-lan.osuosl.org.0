Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A391F79A309
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Sep 2023 07:55:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D867D40965;
	Mon, 11 Sep 2023 05:55:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D867D40965
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694411736;
	bh=XgzasJW7wLG5UYB8lsu9Q4zwN/JPWH66Ni8+pUIVDeI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rx6w+ZkMLVCBOYEVEhs5KyEM8qE8PdlramzAgwRy5WSftYryUNDzFJ5lPMt0lEZwu
	 lTEToWOhxaKeWkpjod0eQZ5kKxsNeU4Tr2jRT5xkLzi/Ih29wG6HzXdPc6K+0p/qnp
	 0c/KgbT87PqmmaPVxh9TFJpzscRimk5eNj5dJopuUgNTn6ymPeYpEA8IT4TuPdD3YW
	 XW/460cVzX5h6UeLSysMuxoJipJtYpT11gu5yvvFEgskuhv63G/tumxdqPg2CrGV21
	 l+xZg09LVb8++dxvxtyuOr7xVYYLDQWVCfSuiMLP8QYharYwbH+8QPUdtl0yKK3LTg
	 13UaFKwfJobfQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rxdwl9sGpXxm; Mon, 11 Sep 2023 05:55:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8284240921;
	Mon, 11 Sep 2023 05:55:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8284240921
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7BD581BF36D
 for <intel-wired-lan@osuosl.org>; Mon, 11 Sep 2023 05:55:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5DBAE607CA
 for <intel-wired-lan@osuosl.org>; Mon, 11 Sep 2023 05:55:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DBAE607CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rtp_tHSK-DM9 for <intel-wired-lan@osuosl.org>;
 Mon, 11 Sep 2023 05:55:27 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6CA7C607A4
 for <intel-wired-lan@osuosl.org>; Mon, 11 Sep 2023 05:55:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CA7C607A4
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 01D9760ED4;
 Mon, 11 Sep 2023 05:55:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13085C433C8;
 Mon, 11 Sep 2023 05:55:22 +0000 (UTC)
Date: Mon, 11 Sep 2023 07:55:20 +0200
From: Simon Horman <horms@kernel.org>
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20230911055520.GM775887@kernel.org>
References: <20230908081734.28205-1-muhammad.husaini.zulkifli@intel.com>
 <20230910142416.GD775887@kernel.org>
 <SJ1PR11MB6180C920CED9ABECC9FD022EB8F3A@SJ1PR11MB6180.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB6180C920CED9ABECC9FD022EB8F3A@SJ1PR11MB6180.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1694411725;
 bh=9bchAL96F/QOep8WZYj8nalWoQJmgRfO9qDf4knqnwI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tI3fVLomlrTQUPsoENLVjnbiITA2CEAcBmVi9mCtktLzAGohq6eDHEtOX/L3jNgTO
 43rvA+cWO5+iYe/DqReH9VylhVPsAoxzQHw7IN9mC759EpiD+IspNCMy11ndB5ugDU
 C3NB1Vdz2xrzsobTBxfwjGrVSIXoDUgS1KPT8xE/18mEGNpyKAZtYh8Ba5RxA9Yv7D
 8KsXp8JBgPWY5zJlFTENKoTjV2h+JepGqLua4cMiI47MTy2jCjrYZHpMKm9vtk8l2s
 k6PL3UbiZi5ExIBbdKYS2WEsYwxmPp/PIkRTDIW3jCVKyAApxwkrFvZkbLkNVzRLXj
 jcYrlpowCxY5A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tI3fVLom
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] igc: Expose tx-usecs
 coalesce setting to user
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
Cc: "bcreeley@amd.com" <bcreeley@amd.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "husainizulkifli@gmail.com" <husainizulkifli@gmail.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Sep 10, 2023 at 02:41:50PM +0000, Zulkifli, Muhammad Husaini wrote:
> Dear Simon,
> 
> Thanks for reviewing. Replied inline
> 
> > -----Original Message-----
> > From: Simon Horman <horms@kernel.org>
> > Sent: Sunday, 10 September, 2023 10:24 PM
> > To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>
> > Cc: intel-wired-lan@osuosl.org; Neftin, Sasha <sasha.neftin@intel.com>;
> > bcreeley@amd.com; davem@davemloft.net; kuba@kernel.org;
> > pabeni@redhat.com; edumazet@google.com; netdev@vger.kernel.org;
> > naamax.meir@linux.intel.com; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; husainizulkifli@gmail.com
> > Subject: Re: [PATCH iwl-net v5] igc: Expose tx-usecs coalesce setting to user
> > 
> > On Fri, Sep 08, 2023 at 04:17:34PM +0800, Muhammad Husaini Zulkifli wrote:
> > > When users attempt to obtain the coalesce setting using the ethtool
> > > command, current code always returns 0 for tx-usecs.
> > > This is because I225/6 always uses a queue pair setting, hence
> > > tx_coalesce_usecs does not return a value during the
> > > igc_ethtool_get_coalesce() callback process. The pair queue condition
> > > checking in igc_ethtool_get_coalesce() is removed by this patch so
> > > that the user gets information of the value of tx-usecs.
> > >
> > > Even if i225/6 is using queue pair setting, there is no harm in
> > > notifying the user of the tx-usecs. The implementation of the current
> > > code may have previously been a copy of the legacy code i210.
> > > Since I225 has the queue pair setting enabled, tx-usecs will always
> > > adhere to the user-set rx-usecs value. An error message will appear
> > > when the user attempts to set the tx-usecs value for the input
> > > parameters because, by default, they should only set the rx-usecs value.
> > 
> > Hi Muhammad,
> > 
> > Most likely I'm misunderstanding things. And even if that is not the case
> > perhaps this is as good as it gets. But my reading is that an error will not be
> > raised if a user provides an input value for tx-usecs that matches the current
> > value of tx-usecs, even if a different value is provided for rx-usecs (which will
> > also be applied to tx-usecs).
> 
> Yes you are right. This is what I mentioned in previous version discussion.
> https://lore.kernel.org/netdev/20230905101504.4a9da6b8@kernel.org/
> But at least IMHO, better than current or my previous design submission.
> 
> Previously, I had considered changing the ".supported_coalesce_params"
> during ethtool set ops to only set ETHTOOL_COALESCE_RX_USECS with a new
> define of ETHTOOL_QUEUE_PAIR_COALESCE_USECS. But, if we change the
> queue/cpu during runtime setting, I believe this
> ".supported_coalesce_params" need to change as well...

Thanks Muhammad, and sorry for missing that thread.

With that discussion in mind, I think that what this patch does is as good
as it gets with the current uAPI, and changes to the uAPI is a follow-up
topic.

So, FWIIW, I am happy with this patch as it is.

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
