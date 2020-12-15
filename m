Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0572DB3D0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Dec 2020 19:36:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A5737866D1;
	Tue, 15 Dec 2020 18:36:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PA4rmmtabl57; Tue, 15 Dec 2020 18:36:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 877668639B;
	Tue, 15 Dec 2020 18:36:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB0891BF307
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 18:36:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B5BFB87363
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 18:36:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8EeCB3JDGQaq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Dec 2020 18:36:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0882D870AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 18:36:26 +0000 (UTC)
IronPort-SDR: f7YnSerZmBktBBE+gHrAo+yfq03mxz1hJYIFYP8KvUy8Dz53CXAM4qkPeWJyTIxQlzSBB8ptfT
 SZebcFJkD+Yg==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="162678273"
X-IronPort-AV: E=Sophos;i="5.78,422,1599548400"; d="scan'208";a="162678273"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2020 10:36:26 -0800
IronPort-SDR: hH4q2KvN5MqJXccttH8AX4REOn8lBVyFfnCOmAodejaA9cMt9BSg3bziX7FpUGSf7tPnXmJc5X
 27orHkJMgcFg==
X-IronPort-AV: E=Sophos;i="5.78,422,1599548400"; d="scan'208";a="412085807"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.214.238.87])
 ([10.214.238.87])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2020 10:36:20 -0800
To: "Limonciello, Mario" <Mario.Limonciello@dell.com>,
 Mark Pearson <markpearson@lenovo.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>, Aaron Ma <aaron.ma@canonical.com>
References: <20201214153450.874339-1-mario.limonciello@dell.com>
 <80862f70-18a4-4f96-1b96-e2fad7cc2b35@redhat.com>
 <PS2PR03MB37505A15D3C9B7505D679D7BBDC70@PS2PR03MB3750.apcprd03.prod.outlook.com>
 <ae436f90-45b8-ba70-be57-d17641c4f79d@lenovo.com>
 <18c1c152-9298-a4c5-c4ed-92c9fd91ea8a@intel.com>
 <DM6PR19MB2636FA6E479914432036987BFAC60@DM6PR19MB2636.namprd19.prod.outlook.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <9bac261e-0efb-fe07-7c3e-6c4ff156bb67@intel.com>
Date: Tue, 15 Dec 2020 20:36:18 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <DM6PR19MB2636FA6E479914432036987BFAC60@DM6PR19MB2636.namprd19.prod.outlook.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] Fw: [External] Re: [PATCH v4 0/4] Improve
 s0ix flows for systems i219LM
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
Cc: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, Netdev <netdev@vger.kernel.org>,
 "Yuan, Perry" <Perry.Yuan@dell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "anthony.wong@canonical.com" <anthony.wong@canonical.com>, "Shen,
 Yijun" <Yijun.Shen@dell.com>, "Efrati, Nir" <nir.efrati@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Stefan Assmann <sassmann@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/15/2020 19:20, Limonciello, Mario wrote:
> 
>>> Absolutely - I'll ask them to look into this again.
>>>
>> we need to explain why on Windows systems required 1s and on Linux
>> systems up to 2.5s - otherwise it is not reliable approach - you will
>> encounter others buggy system.
>> (ME not POR on the Linux systems - is only one possible answer)
> 
> Sasha: In your opinion does this information need to block the series?
> or can we follow up with more changes later on as more information becomes
> available?
> 
I do not think this should block the patches series.
> For now v5 of the series extends the timeout but at least makes a mention
> that there appears to be a firmware bug when more than 1 second is taken.
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
