Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F060A875E7D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 08:29:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A10A44167F;
	Fri,  8 Mar 2024 07:29:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lqaYtgMHSJiX; Fri,  8 Mar 2024 07:29:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95B8C401BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709882983;
	bh=eHWf8s/Ml1MCWiBBgWd8j6ro+3egLB/7vzPrV8ktwwA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BXql5hREtL0NmDvlbn3c9DN94GXv9SuwPbIb2DlLjuETpxZuyRKeMYkLYa6AsNX3T
	 yJj2sxfH0iJYn1IdBswdsN4Ha703LgNsvJcs/pSkgLCwFlhAniQ9bJgfWgydQ+RTqc
	 T8DHOcvck8BCeMr3Dlw3U2atL40E7wgv9yV1lkRnYtsAF1kqTQGHrlB4ql7PV1c7Yy
	 MeA1yFPgGp6hjxbNAsaK/Yrr935TQ5slTE4i+s+tuJ3Sk4Vqg+pH7H5UEdaGHl7/NP
	 UWoTzF6kMDulCP/u3S0DjkV9RrhAe1bfPT1ltpV7Xsgildf6cWVIWlRZzhDWgPUZir
	 pVBgXZ8NMKbWA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95B8C401BF;
	Fri,  8 Mar 2024 07:29:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 523371BF316
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 07:29:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B44A382AEF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 07:29:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nFzluVUAAJwq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 07:29:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DE8F682B1A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE8F682B1A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DE8F682B1A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 07:29:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4731153"
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; 
   d="scan'208";a="4731153"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 23:29:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; d="scan'208";a="15073250"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Mar 2024 23:29:39 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 23:29:38 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Mar 2024 23:29:38 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Mar 2024 23:29:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oTIubg2UWJpCyqnVzVjmo6mbcHgpRKVIoKXlL6lRSzhvoRnrwFt7/XZkyeS3STUkYQGwRY3aOMB1gJannxK3p6sPhdrnYGYmlpLRm8VECMQkEcYoN8xfEkjOvnEysTEqdtGFJLBPsuWmtxjch16wXae56pbcUoKkqevgVYcnUXV1NDASYIE/Kaz/HTW0Qr2kqmEaux63xd5yHbYdko2S2JD4z0pQuDVaLwD6kkErLkPsLub2hXg6+KfNuNDjqY5UCXTVIWwqU25+aT0t/xCqGypl3IQvUpTiAj4rtdI4TGWOQiq3j2Xu+2POFtiaw5RZAsmfjO0xlT3qFPQN/GwQpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eHWf8s/Ml1MCWiBBgWd8j6ro+3egLB/7vzPrV8ktwwA=;
 b=diu9Wh4VayhgV8f28WsIjMlNwC9HMnFHW53MxvWRnnaA05VTKDBOD9iAM8uNc9TiTwudGIY8EbH7REHm1MquD1R4w4XGRjsVjSD/cZ9Vq6uqlPwPe7z9upc2htwrzivVISsW1+UMfQagHkY5tFGf9NjN9eAU1/E3XbHZH58hXqDRRIxo54mdzJqFePKJf/nFRWsSuMF2D+4QjjFGOhvK3wqjH1VbrzFmqT5YfygPK0ITob3W6CmpQV+FDYGuWX82uYk5NQpSwXoHOmHJ1bqOFNMIQhc9roP1eedKUOAzU51+BbN8yo2IjBZqcZcC+4NjRfyfrWEUdgeOzkmgC+jl1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH7PR11MB7098.namprd11.prod.outlook.com (2603:10b6:510:20d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.8; Fri, 8 Mar
 2024 07:29:31 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2%6]) with mapi id 15.20.7386.005; Fri, 8 Mar 2024
 07:29:31 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [iwl-next v3 5/8] ice: remove switchdev control plane VSI
Thread-Index: AQHaa86doNJsCmixuUSpFanPlH/ap7EtfQcw
Date: Fri, 8 Mar 2024 07:29:31 +0000
Message-ID: <PH0PR11MB5013357E767EF59CB3E515E096272@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240301115414.502097-1-michal.swiatkowski@linux.intel.com>
 <20240301115414.502097-6-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240301115414.502097-6-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH7PR11MB7098:EE_
x-ms-office365-filtering-correlation-id: 9190a7a8-5849-4440-ce27-08dc3f417f2e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZVI33eatiJOrmeNCVQyA6p9veE6Rgy+rGKvt0UxNLS4mpvUEl/KlZDdrwC2wLFycteGb45eaGLD/3TH5sNl3/yDJdAniza/OklWmql1FdfLwaHMsfGf2ekpGmcJVTtXOF68iD78wogUdBxxAclnkp7bZ8mITXJAqkqAonWHyOpkLgnXHNv9kPtla3o2slTZ/gr7edHgjXKVSbj2/grcEQLk46uXqy4IsfQFEC5388Pcelg54QWLJRkywADvCBdp3XwjEwzs4ll6GywqjlxBpsMR5WkwWjHW+7U750QcWb8IviRrVek/hW53z6/tnVmdz3qDxuJL9RBeL1eWX1/DUaw7Cg8mOp6Ovx9DNN6Ts0F50/gHpXjMSa5l8H4p3YdECkkBVxZEdMHmtEeFC8RGUAM3gCWbqs6fRlhQg20yOTVevuz7ZHC0d93wC0dRDi8zTioSdFBVnih2cgzodRXVQ6fFG+DgaozpXpWQqz72FEjv8UgtlBe5A0KUPVOVZDWYh8YkhjdfosOvVcbhBwOuact+3tL1tuH/yqi+DBH/ldjw4q3WvI2JCBqoXV6CUTP5fIVzfutqXuf9j2EazwUzek2vLbOMoDkd90IzV/6E8s/Tv+Ze8JqqchDOWBzvZV5g4e5jcFTknGMqTqj5FEp4lhVQT5iewhNs+I/l92BPzqVwNphBB7MuZ2iYPqIO8vsHqKKAzBRkpxKDdGIVpijnrIg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?E6GLKKZIg8VeZu1hF0XXoN04hIngDzF/5wWcviz/AL/+RdcSi+5IHA07IhL3?=
 =?us-ascii?Q?1dWlckY4dCptr3opjy0t3s7g7iUEXnxyoMDVS30BTzg9Nk4eysuWq/tlM9kd?=
 =?us-ascii?Q?zT0noCwcH0bNOuZCUcx2+iU3nc6y75g2aQfyyAYiKOQGCFe1Yievx/TpanDI?=
 =?us-ascii?Q?lNst662/2VBk42zvMkuSDE4aEXe5NiFk0j+2Jl761AklF5mgXpUIzEr2DN4z?=
 =?us-ascii?Q?EZ1sY+pEL3LA6bTTP2hKNbGJtrfU3VfTrtbnh0CxWwG6VQ8CnwzIEosq6f6F?=
 =?us-ascii?Q?kVcORnQ9JAelaXo4/ZLYXzFkvvYScDYmGAYxkIMK43sW/Wi9DIQym7K7ZtRg?=
 =?us-ascii?Q?6NTFZlpSb0uD7Y0aMHDgfI6e+3Qodnul5khZdYq8QIzpX8Qi1kceEnEGXqPz?=
 =?us-ascii?Q?xfxxD2hJEV8D3XXR+CqwG7JzNMz5Y6AqPI3ODwfnYIv9ddaXzCj8X16OmUN2?=
 =?us-ascii?Q?PQZxPqY8abTtLIg06v6ZzpxbzWU91rlzR0S+W9o+woNg1Pcm52Mb2S4JQfo1?=
 =?us-ascii?Q?BbuJOTCYz0UmLeA0+nPgA35F4nl7hX+VTB7+5tzWwfaRbvgJUp8bZSZA7byX?=
 =?us-ascii?Q?nnkBZQUZpAS4dqyXDlSbEv0lnA4w2tuRrpkWl0KkCHkumazywsFDWhaCOYzP?=
 =?us-ascii?Q?B2AMOWiWNl6PbqjN61Ss5uVoZBVB+M71Ivh/l3dciH3xGAZJciFjlzClLiKd?=
 =?us-ascii?Q?ah0zwQ2nnpY7FxvRoLBU/UCMU+EiM9ssJI9eL3mdx8wcxgHf0o5iAkWusg0w?=
 =?us-ascii?Q?V8pL4a2ERRGmBbO/dR24pz/2ysrPmKQ+lCggyBq6Nw6BJWETmfYKk5fmzkdj?=
 =?us-ascii?Q?Ch4zXSAY9h0s+ctwXHZskZO3jZ//Zh6/3Q+YFXL/9BF7zGCR9YBU5sQYdX7D?=
 =?us-ascii?Q?4MGUiEAGxZkUKEPqnguVruvvXXuJuVlFtnq3wz/el/SnoF5JUzt4G+/YtIKb?=
 =?us-ascii?Q?8fc2MjKGM0MO3ny2zO2lhYdk4/L2r3e0KvF8FPiEv+OeZukkHJIMa1AVIxyd?=
 =?us-ascii?Q?+QDKmBIxV4ZAyT8VVDjc4PrPU5C+7xGMfssZ5jN4i8PfzraXEz7tdT6EZGtQ?=
 =?us-ascii?Q?WVW8i1E2BtVmI0rIpQDJS8E3B6Dk9Zo3pMdpKuYC2JtbQ4cBnS8YJH551WBO?=
 =?us-ascii?Q?f0VQLr/zubRGwUtNJxHGqLgJizAT5CrTTsnOPTNcQczdmuW4up2EkmWEow6m?=
 =?us-ascii?Q?pifdrVRMawS0jJ6a9lKzaG/owxVtUZQcZMe+3CYyy1GqJB6xGZDV44DsTurF?=
 =?us-ascii?Q?m7m7Gj5wJ5l0rYPusIFiQbVEwOW+C13jFQp/2uBaMvsJtZEKShrC+wFLROAV?=
 =?us-ascii?Q?Q2ff2h7HTlgu4vuRsV3AXw2c7ePlEW2ZrW9WychuHPKrdVMOB9ZJmpUchMC6?=
 =?us-ascii?Q?HCrY65aMVjq0+RdjcTZMNP3VFmRFqJXv6teKBw6RXmF2BNuWxLoppPTw7WLz?=
 =?us-ascii?Q?FNPFj5oQgt9kRdtY6ZQjWBkOuJIJRbipfbNTrcIY6lIE0z7ZwasG2pilqGj1?=
 =?us-ascii?Q?Uj3SwZMGamj4m4ekhFqak//RGWWyBg8lYcnQ8N4EvNI4r/4uWmfeoeWNq87S?=
 =?us-ascii?Q?0CDf1zysVqfdqjPgU/IjhBiodkTpjBCKv01Jjm4pNL78wDg5+l+wCzhMOc6f?=
 =?us-ascii?Q?Dg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9190a7a8-5849-4440-ce27-08dc3f417f2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2024 07:29:31.8386 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8sH7LrrOXL1XMAj9LtBByfGPwtNbyV1d42C01EmDFFamv4iHUSo2Iy+0DcrcK8Rg7Ff3eAsjl4wtvb5S9wJWtgR2tryNTlKodhro1vIR430=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7098
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709882980; x=1741418980;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DsKWjBoDbC/X+A9/cmOpLQjMFjUAJXOx0nlR5UbnpAE=;
 b=hUr6SVdzlQM3IRBHsml+ojXkpyD32xiEMbIhmsSaHGZl6L5L7Ah+B9pd
 WOQXP4CnuQaLfLhOZ4A/PKxKDlz3SIgDbIxI72agc95iiMoqGiC+CbBii
 SL32NQ7DGkA1pUUE/0HG745YvzPC8dnTsp9OqkxZ2I2O9/yDKGvyCdwla
 pJzy4Tx9fqS6AfDxWxIb0As4Cz3vkLN0DsiHogV0DEyq6iDbXb6v8ig0e
 z1vDlE7YbQphj+7LVOHoNNfBkNTKYYguUna0SuUy+aKHKpsExvR+QwGun
 HcJUr3XWmFnDwA6SEKOE698NNb2MApRKDea6z744Eg3YreQ4jmeOxtme4
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hUr6SVdz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v3 5/8] ice: remove switchdev
 control plane VSI
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Szycik,
 Marcin" <marcin.szycik@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Sent: Friday, March 1, 2024 5:24 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Szycik, Marcin <marcin.szycik@intel.com>;
> Drewek, Wojciech <wojciech.drewek@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; horms@kernel.org; Buvaneswaran, Sujai
> <sujai.buvaneswaran@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>
> Subject: [iwl-next v3 5/8] ice: remove switchdev control plane VSI
>=20
> For slow-path Rx and Tx PF VSI is used. There is no need to have control
> plane VSI. Remove all code related to it.
>=20
> Eswitch rebuild can't fail without rebuilding control plane VSI. Return v=
oid
> from ice_eswitch_rebuild().
>=20
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   1 -
>  drivers/net/ethernet/intel/ice/ice_base.c     |  36 +---
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   4 +-
>  drivers/net/ethernet/intel/ice/ice_eswitch.c  | 163 +-----------------
>  drivers/net/ethernet/intel/ice/ice_eswitch.h  |   2 +-
>  drivers/net/ethernet/intel/ice/ice_lag.c      |   9 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  49 +-----
>  drivers/net/ethernet/intel/ice/ice_main.c     |  10 +-
>  drivers/net/ethernet/intel/ice/ice_repr.c     |  12 --
>  drivers/net/ethernet/intel/ice/ice_repr.h     |   2 -
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 -
>  .../net/ethernet/intel/ice/ice_vsi_vlan_ops.c |   1 -
>  12 files changed, 13 insertions(+), 277 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
