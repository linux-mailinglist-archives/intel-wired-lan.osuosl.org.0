Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD4F7FAFB5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Nov 2023 02:43:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D56D560EC0;
	Tue, 28 Nov 2023 01:43:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D56D560EC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701135821;
	bh=7mMBtDZe5E3q8fpo8SnlQAZ+nhzWiV5c1QBcX6r9IQs=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YsEKfbrcYQ0cnszHN6FzOgFvHff8U9ACCP/9NNZ312jRpghtwt5fBqsL2LlHAbkch
	 Oxh9v/lf7J2VDCuA+pZ7DJdkVgip9EqN6MDl/FUT8EvXvQGUyE+Egp+uCKQlwHRsG9
	 8EK7dzNtsj+P3JwSrJyceZygY/bl30V6lPEuzPuQkR1ZrtJaH4vPXB7hZlnPQDUl3g
	 w2gZgelruXlwudzbZ9oLTESD0aGTwhcBNqMRQEJ1hnzl/SvPCS8ISbsHoZn3hMi7Iu
	 BpXOd0UmehAWSUwPgyzppn9pzLuhEqA55O5xIElm+V/pcJCk1SMaR0o94QZPiL/mvl
	 sb/cdSdgwx7Hg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kEBFhLB8VyI0; Tue, 28 Nov 2023 01:43:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EE0760C31;
	Tue, 28 Nov 2023 01:43:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EE0760C31
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4CA7E1BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 01:43:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22328400AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 01:43:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22328400AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WQ--Oxglc-rV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Nov 2023 01:43:34 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D00D540015
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 01:43:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D00D540015
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 39D83B83787;
 Tue, 28 Nov 2023 01:43:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F471C433C7;
 Tue, 28 Nov 2023 01:43:30 +0000 (UTC)
Date: Mon, 27 Nov 2023 17:43:29 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Zhang, Xuejun" <xuejun.zhang@intel.com>
Message-ID: <20231127174329.6dffea07@kernel.org>
In-Reply-To: <e662dca5-84e4-4f7b-bfa3-50bce30c697c@intel.com>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com>
 <ZORRzEBcUDEjMniz@nanopsycho> <20230822081255.7a36fa4d@kernel.org>
 <ZOTVkXWCLY88YfjV@nanopsycho>
 <0893327b-1c84-7c25-d10c-1cc93595825a@intel.com>
 <ZOcBEt59zHW9qHhT@nanopsycho>
 <5aed9b87-28f8-f0b0-67c4-346e1d8f762c@intel.com>
 <bdb0137a-b735-41d9-9fea-38b238db0305@intel.com>
 <20231118084843.70c344d9@kernel.org>
 <3d60fabf-7edf-47a2-9b95-29b0d9b9e236@intel.com>
 <20231122192201.245a0797@kernel.org>
 <e662dca5-84e4-4f7b-bfa3-50bce30c697c@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701135810;
 bh=OjB6PWpGpg8K3KA9dzFB14JiNIAxrS4EH02IlqUUA5s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QK3TVV4wkSnPSezrL4rIf6VykLjn/8a6HFJKVa3aiSVIKQizQexZW5NhUydMwoSYJ
 THeU0h3A9kb0dDIyuxxa66qU6P5ztEdyFgAyueA2hbMpa9orW2caASVd1DhoXIlhX8
 BgRuZeZUyVAPCYR/bu/uI+4nLvHzqYxboz7B1ndE7S8Gm7DSUni2jPrLtcnYcEW/ug
 timjuitLX61XswF8ARqglcdvsvNI4CMtLDMUF9B2PZXGBYCBFwOdyYc+7rVb+RYeZP
 oun4hEritCKFvHqu3iEy7cdWXmdVvWeOrY1reALYiboFZABd4DPfxbzp53z4g9Yb1/
 HKu43nKLWGCKQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=QK3TVV4w
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support'
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
Cc: Jiri Pirko <jiri@resnulli.us>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, netdev@vger.kernel.org,
 maxtram95@gmail.com, "Chittim, Madhu" <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, qi.z.zhang@intel.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 Wenjun Wu <wenjun1.wu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 27 Nov 2023 16:15:47 -0800 Zhang, Xuejun wrote:
> This is extension of ndo_set_tx_maxrate to include per queue parameters 
> of tx_minrate and burst.
> 
> devlink rate api includes tx_maxrate and tx_minrate, it is intended for 
> port rate configurations.
> 
> With regarding to tc mqprio, it is being used to configure queue group 
> per tc.
> 
> For sriov ndo ndo_set_vf_rate, that has been used for overall VF rate 
> configuration, not for queue based rate configuration.
> 
> It seems there are differences on intent of the aforementioned APIs.
> 
> Our use case here is to allow user (i.e @ uAPI) to configure tx rates of 
> max rate & min rate per VF queue.Hence we are inclined to 
> ndo_set_tx_maxrate extension.

I said:

  So since you asked for my opinion - my opinion is that step 1 is to
  create a common representation of what we already have and feed it
  to the drivers via a single interface. I could just be taking sysfs
  maxrate and feeding it to the driver via the devlink rate interface.
  If we have the right internals I give 0 cares about what uAPI you pick.

https://lore.kernel.org/all/20231118084843.70c344d9@kernel.org/

Again, the first step is creating a common kernel <> driver interface
which can be used to send to the driver the configuration from the
existing 4 interfaces.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
