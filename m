Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C747FF7E4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 18:16:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFE6E6FA1E;
	Thu, 30 Nov 2023 17:16:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFE6E6FA1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701364588;
	bh=HGq7Gj0OvMhWOYjeZxdXdNO2AGgja+maCjDdJb9j9gg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5uzlKd+YlRjrzd+H6jYft21zm5i5PQMAU7+RDO4m19iYtcLmfMHULl/e5PAuvCjWd
	 Jg6pk/PCZ0opn2lYcp18bZ+9d/E1Y9e7rIo5vvRaXJwfYtfytQgFQlRYabawbyJPbt
	 j0qGSzYMdTG2IDadsVS7qNMLW0zhTOoSe7ollnEwms9mUpIbtWM0kcz0pqCggvqnwX
	 FAedhLA1gFHgPQrmfacMcIEcYVSNf6YPjYNdCPqA/b+ciTLVrSTJ8EkI7mSvMrLS8R
	 Aw0rs3MfkvvE4I9zyXQ/Mo0aZ+jFuUvz0C5G9WYSbDGw3sd/HKXqQzgwtWcA69gfKL
	 +mQwecRG6r8Ng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B6iITfZzWYBr; Thu, 30 Nov 2023 17:16:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 886A36F7A8;
	Thu, 30 Nov 2023 17:16:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 886A36F7A8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BCA8D1BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 17:16:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9134A435FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 17:16:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9134A435FD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0x1cjFV42VJ3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Nov 2023 17:16:20 +0000 (UTC)
X-Greylist: delayed 424 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 30 Nov 2023 17:16:20 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66E91403C6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 66E91403C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 17:16:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="353527"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; 
   d="scan'208";a="353527"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 09:08:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="942778503"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; d="scan'208";a="942778503"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Nov 2023 09:08:10 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 09:08:09 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 30 Nov 2023 09:08:09 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 30 Nov 2023 09:08:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ktPlG8v7KRAmR3k06y7aggS3dcQnL61EM8oRHlSmf2We+O1tjLKeGqTYLI3RM/3XNVtNq84HSRGqi/a85BgMf/AeXTrywnTIzG/L/2WnzBbVHLAsTBYBxNiSD+1LAa2dpRnlgr8FpRqun+IxkcDAacd5+58aoySqL0IUxF+VCO2lP1IB8W9bK/AP8xTMfLGxtaazWJTJV96nqTaqwUrXc44cpqjAbEHm8ZjcERK/pl+yES1qgpwYjbcYy1EO1ZsII+Ae1WKKR1buN+fRsQVnF38oAdNyoWhyplH17sKYAdKJeioOhnCgD8yvFNNwkxLdjukcPDqKsaI7FiNM/sAqjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w4fHwHZTVrO2VoUtY8Sv+mJ5FUHRkNF+cZN+5Xx6lu8=;
 b=CJq6aXO949tfnDO8jb+T3vwUhvQwfdoHMlRZswPzd6FN/BHm7zcLp2egDLtkUvAu7R69DT6CMHX1hKK9EL6hU5txZkOpd4HVazFF1S4zJJzN+dI7wyFE4D8to/GDczfnhfgQJ0FoObEvoxfMnC2GzjKwywpFoV/tlb2sQgOl5L6RWWc/IvIB5btPeBPiKAnCWG0yHY9eOM5rsSdtiKrTcDPBNHPj0BxPzkpk2RUdWeUGgUsFVcCDGzc5qXb/Y6JKRj7+5VWvUz5+hiekS60Lm3GD8uxWlrq6rjF2EjX4xEFu/0OhYmz8fARVtF7n6G7VIP0SZAUVgsARjAmgxebLyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4257.namprd11.prod.outlook.com (2603:10b6:a03:1ca::32)
 by DM3PR11MB8670.namprd11.prod.outlook.com (2603:10b6:0:3d::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7046.22; Thu, 30 Nov 2023 17:08:06 +0000
Received: from BY5PR11MB4257.namprd11.prod.outlook.com
 ([fe80::dc55:8434:8e81:bcb5]) by BY5PR11MB4257.namprd11.prod.outlook.com
 ([fe80::dc55:8434:8e81:bcb5%4]) with mapi id 15.20.7046.024; Thu, 30 Nov 2023
 17:08:06 +0000
From: "Bahadur, Sachin" <sachin.bahadur@intel.com>
To: Andrew Lunn <andrew@lunn.ch>
Thread-Topic: [PATCH iwl-next v2] ice: Print NIC FW version during init
Thread-Index: AQHaIu1kr95UX2N4dki9h+BDakOO4rCTBc+AgAAKVGA=
Date: Thu, 30 Nov 2023 17:08:06 +0000
Message-ID: <BY5PR11MB4257E2D47667F2108BEDBE0F9682A@BY5PR11MB4257.namprd11.prod.outlook.com>
References: <20231129175604.1374020-1-sachin.bahadur@intel.com>
 <6404194f-3193-49e0-8e46-267affb56c24@lunn.ch>
In-Reply-To: <6404194f-3193-49e0-8e46-267affb56c24@lunn.ch>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY5PR11MB4257:EE_|DM3PR11MB8670:EE_
x-ms-office365-filtering-correlation-id: 675315b6-6fc0-4947-00b8-08dbf1c6ec04
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lO8rOZOpdwaPPeOSzmj6EU+J5xcSUMKIKwXtPCa6R82zMKGEXGW4tICImXfQzuyJxnduyleuDf9u3KLT2CaYSIJESsmt2E3Oezq4AZo4Qk/ioty4RuIMXkMzDnobQpQs0obDOE3EagXLktC0FyaXG+DoArOF6rKVKovjxx3lgfuUhldEb134yaIbXAMqqF8V3pog4DWNIFiu202bvAmk2M1XkGQjvvl9NmWTBwLLAOYu8OFeDyYSA5wUF+SEf1qMzV7YmC3vsc2ivIQdZ/XLetQuDvA0IXcpRtFA5Gnf0NYyAQL86fzDyC4HSXfHc4TjFBe7AGXYOZ2BVPA3HGhowKf1BeMvpj3yNpGOWBb1z5IGxeBpnrSN6UfbwkEpE2lekLSnQ2EJbnlA1GIAlS24CpyXBwdyBzohWDFKO0ZcKcNSNhSjl3kKugXw3dARKlshq7cdbVIgkGfO1OWQK+5sXDL9gNgcDXm9WGQNNikAcz/Y/xn0Qa7lGOaNDncmvnhZZBP7ZmhXOtLGjBqbl2D5sL654lC4xm13l+DFqXqZwLfjWTp4ybqOtCSKSVTZCfmdx6t7Y59ctbhGBy2+NEmh+f4U4U82ySdNEDeovzCSWY46wLCJHQWGgt1V5bfMan6Q
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4257.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(39860400002)(136003)(366004)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(82960400001)(55016003)(122000001)(38100700002)(8676002)(4744005)(2906002)(86362001)(8936002)(7696005)(5660300002)(4326008)(52536014)(64756008)(66556008)(66476007)(66446008)(66946007)(54906003)(71200400001)(478600001)(316002)(6916009)(9686003)(6506007)(41300700001)(33656002)(53546011)(76116006)(26005)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2h9o6vCqIa4F7KYNqiDRzgtK5DNLm9tlVgKLbf1h6pRlpvd7p/WEajBJ/OFl?=
 =?us-ascii?Q?a6rfhJGkDUJBWTSP8Q/cB//ObzkxhtMq9NvQb/zdHQMJFHBv6TnH2NJW5ux5?=
 =?us-ascii?Q?r+SEHvSsvnU+4l0O0wqYtBTPQn4oX7PZiPqyaGfTZogAGlO4+VZZvTRXwlPg?=
 =?us-ascii?Q?OOnBZ1wwhwZhQo37rx2NZcuvABp8f/AwXz7sw115193Sbi/l0OlH/uWAZh60?=
 =?us-ascii?Q?6WWsCqYVQUNrz0xVxZJcSJQZugBLz/KpUz0GTlusI5k7p82CD+pyyaDTVX8k?=
 =?us-ascii?Q?Cdg1+rer70gSp3OK92lovTbzlvTe/7TyOZK37ZHxLF4sozaNRF1sskJ+ZeaP?=
 =?us-ascii?Q?X8U2TV4aprS4Jr1tmF2IOuhS8y6R9bWkhhS42kDGsansze9EhlhTvDdtb2w6?=
 =?us-ascii?Q?Vyp9eAjnTM7JS72coJwwSMx7SOgW/rtcZHOw1eqmHbObbFbqLNF4xAmNKk+y?=
 =?us-ascii?Q?ynCRRFZHe41KHhw/SdhauABoELDW0BtXhbfFiMOEjylPCFG5X01KHgoOb7EQ?=
 =?us-ascii?Q?jidsd4F3v/4KG+t6WnWmjYf2sOAB4nnWLN+1vBQM+ANNRZh5KTNzHZ1XxheT?=
 =?us-ascii?Q?2wOF/skXi1ptTm8kWQVOTd6gWiU/fCE+kVDlqsCoHOZkizz5PjXfIVmoDR/p?=
 =?us-ascii?Q?0o4D4uWSUuOaBsZsgZP+dtSFaaR9ZZhtQGcN9yY2rD/FlPygkC6J3D+nGOHt?=
 =?us-ascii?Q?ht2lw0ZsE+wsL5b31QvsM/hJxRhWG08bOQa1f5jb901DxJR1Yh+rTsa9D704?=
 =?us-ascii?Q?+F4QDd4rKH2qUQ42eSXRUAOR9ZLN9QTCTDD4TE4lbIAvPgd6S5Fu43q7kM8q?=
 =?us-ascii?Q?T6QDl/UauZO0SGtXdEmi7G5qdDDj4DTtZVYt4YGn2e7oGryUpuRgCJHfcXhG?=
 =?us-ascii?Q?sNv12RnsDSJGDW3hk92w8NBXQTIE3hBc6V6KAtUSwZsnYHA7+Seo4aTRhkuu?=
 =?us-ascii?Q?KN+2Gkg37OFJJyMWwdptctu2Afo48Ry4gJtwsbw3FSGO0QKJxUeeGwrXIbor?=
 =?us-ascii?Q?9zvh32tHvg5o9mOP0Eh3c8qHIto15zRf/Nekfz8HoLQmFMx3KIJr7yWsZ8cB?=
 =?us-ascii?Q?WcV2NUZykCTGWF9EEIqQ8vxQX7dVq5RJU3T2sU9hbcLbd7lOQ0zMO8+cCVLe?=
 =?us-ascii?Q?beQ4Id6At99aEjIMTDh1E7BfrLVxtJyvK8jsHYYy9NUns4Oh503RohC4I7qI?=
 =?us-ascii?Q?aVq+Ci+T39QRCFhK9UMX3AaX54rvH0aqA2lwXXdL580JRInYBtRjhm8TlufN?=
 =?us-ascii?Q?qer83Kk9BjrQDlJ9CJFn9Quacmv7DewKPw046EJAkul3pTnrF1VPyB3aW7zm?=
 =?us-ascii?Q?y1tNZCYRVDRSj8lKSjkUk+9LeLGtz34Y6wa3RjyTNfbdFiLOCvzqvgey+siV?=
 =?us-ascii?Q?FIvjXZ30ml7zxSazGPmtxNB6Hh0+0xvT2pw/DCZrt9qKaHP4Idy4RXA4OF2j?=
 =?us-ascii?Q?5It+4s1xPJyBWqbMEQ3pJFO6A7KE/37WktG73wE0mz9Eczy5rqOqjrDkKrnn?=
 =?us-ascii?Q?IHArTRW5ui/qtSu658YFJyWHLLknQV1TYrqxlTSgRV9JnhTGhn0syE05QmwN?=
 =?us-ascii?Q?SiWgaap1SvxlDdwv/+hEvqmmsv1scjS85fSX8Z5U?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4257.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 675315b6-6fc0-4947-00b8-08dbf1c6ec04
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2023 17:08:06.8533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B03069BXaHXPdkIjVWQjiC5wRrEvVUG8RSixw4OC7HNmD8/v44LcGYcuGDvAxdxImtuJIpGgMHQ3N46Y5QhukWVy4Q/t2BdtePSLeDNeyw8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8670
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701364580; x=1732900580;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=us3053M/NQeiBIQVDBuvCwyM82lqQUkwoHV+F7FKPSA=;
 b=bhOHRLeA9CksDK2a6IGI16QpxrMEmTieVRklASEeach/MlJIEPq4UJfP
 jLavXRt3Qn5XMToBkLj1to0fqCjYPboeHEFzNlLY2ow4all5PuoKcGxp3
 yHSRCfXykyihjS9yK6urwuiBXu/wTNTLn4YaX4HKdGcTH+2s8oaoMqhIx
 EbubKWCpuKjLsMPcwllTx4f8NsVG0aCsT27eMk7ni+WjjVyisMjkssJMR
 wGbBUBYZrOOEheE46vgiedJg+YmumbGNEIdikzDHkiCgOeOwDNa/4uW9q
 lRp5uTZ5c5PWLm/CPR57oJi2v/Zg3Cnp8uS7Ekq6EzQl4WYFkPpJlN9yH
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bhOHRLeA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Print NIC FW version
 during init
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> From: Andrew Lunn <andrew@lunn.ch>
> Sent: Thursday, November 30, 2023 7:57 AM
> To: Bahadur, Sachin <sachin.bahadur@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Subject: Re: [PATCH iwl-next v2] ice: Print NIC FW version during init
> 
> On Wed, Nov 29, 2023 at 09:56:04AM -0800, Sachin Bahadur wrote:
> > Print NIC FW version during PF initialization. FW version in dmesg is
> > used to identify and isolate issues. Particularly useful when dmesg is
> > read after reboot.
> >
> > Example log from dmesg:
> > ice 0000:ca:00.0: fw 6.2.9 api 1.7.9 nvm 3.32 0x8000d83e 1.3146.0
> >
> > Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> > Reviewed-by: Pawel Kaminski <pawel.kaminski@intel.com>
> > Signed-off-by: Sachin Bahadur <sachin.bahadur@intel.com>
> 
> Is this information available via devlink info?
> It has a section to report firmware version.
> 
>    Andrew


Yes, this info is available via the "devlink dev info" command. 
Adding this info in dmesg ensures the version information is
available when someone is looking at the dmesg log to debug an issue. 


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
