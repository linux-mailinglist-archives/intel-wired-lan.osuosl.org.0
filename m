Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E3181138C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 14:51:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF4484362A;
	Wed, 13 Dec 2023 13:51:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF4484362A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702475504;
	bh=dVaFFzqg1lDs+Dtcy3zXqIFAcJgE6Ac16xZZG7PfPmA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dXG4VOOGeoPNE1yJk7086NM8BEGjCcrDIQNrHcYms0KVCawH7sio2T++cbdNAwWHC
	 q3S4nVi5ctR1G/5GxDUMAFDOM8QH65NFIsWNhwgc/nwSyVa+1GEpYW28PjETKv4C+u
	 pahdeUwOgD29gjbWlE8WR/DZyrxd7vWhwafIDlRnMRC6xhTfjQY2Pi5YRRy3XuI9D2
	 0uKndLLDh2CQZyEdteLMtYN7ylN8FPex2MOdEZa2BEYwxb58i+cguNA6wdRUIWA2rV
	 XjesB9FoLx+eVSWdWqEB1NzGSH72tPsyba3aYHAauFjbqLv//P9+aQZ9+o55VbI+kA
	 F1Hfp6dMjWKOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZJEDwSuzQBj9; Wed, 13 Dec 2023 13:51:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5D21740469;
	Wed, 13 Dec 2023 13:51:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D21740469
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3AFF41BF867
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 13:51:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1052341DF7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 13:51:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1052341DF7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ExTZ1UAWbOQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 13:51:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B69F140360
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 13:51:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B69F140360
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="374470294"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="374470294"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 05:51:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="917662468"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="917662468"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2023 05:51:35 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 05:51:35 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 05:51:35 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Dec 2023 05:51:35 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Dec 2023 05:51:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ezEqjxzfWtFcLXaRCHoocVzo6wsuqorKhXUYrJ/O/KyEh3FdFyQ1Il1uk852RzHKHrq9eNaTskArPu57qAZ5l+FCWcK7cHLei5jrKMVa/ntlcRwNaE3pV1/6lT+dZEBekkLQYXClcI8J+AbVONq544uu+h1VhOV2gvTiFxZrC/r+BzNUrfc6DwUukyTtkcLafMEktB3gI6Bt1BUMVqGas7jn15Ku85NDAj4W5VoLWZlvZtNttlsl71OLMw/Uw5KlnKtd0ZMlYoHGJ/ii0snySzNi9FEhyCFOs7AXMo6z5/vTWpNOYLaqjaPGkIJeq+tZ91eDeUNbVRTjLYxmh9HOaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KqggKG5j20WT2QkowlpGApVKkG7Cg5HeupP/BOdhdsk=;
 b=BxkwiNhHzrBVxm4DJPmfybZabDA3WngqcTFpi8XMTSqOBqfFBVdiJWrS3j6NIjKkujGcr1gDoGh0Lj4nERdaCLRzY1eJwtAaJxCOvBiRRWOkVqTmeXSC2YejFRjLNwCI4e9XsyW5SpB29M/tJ5rnnMLABgKk/CH3Akr29+3E4Dcbz2D1O7U5K3030Y/OsDRQxFH09GD26vRsxpkrnvZnYOyKu07MgdxhQwUpAqSdPaiqq8Blr/Nl4tW5kEvd/SZs8rJc5zK5cONAJAAZjzJv4FlgKgS5GhHUTLFJOQbIWHo9a+xaWkEUj0AssICe6q7Z76rGf8c6Szb40dRsxiO/yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5782.namprd11.prod.outlook.com (2603:10b6:510:147::11)
 by DM4PR11MB5391.namprd11.prod.outlook.com (2603:10b6:5:396::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Wed, 13 Dec
 2023 13:51:32 +0000
Received: from PH0PR11MB5782.namprd11.prod.outlook.com
 ([fe80::dfa4:95a8:ac5:bc37]) by PH0PR11MB5782.namprd11.prod.outlook.com
 ([fe80::dfa4:95a8:ac5:bc37%5]) with mapi id 15.20.7091.022; Wed, 13 Dec 2023
 13:51:32 +0000
Date: Wed, 13 Dec 2023 14:51:20 +0100
From: Michal Kubiak <michal.kubiak@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
Message-ID: <ZXm22Iw+vSxacpkQ@localhost.localdomain>
References: <20231212145546.396273-1-michal.kubiak@intel.com>
 <78ecdb9f-25e9-4847-87ed-6e8b44a7c71d@molgen.mpg.de>
 <ZXmwR4s25afUbwz3@localhost.localdomain>
Content-Disposition: inline
In-Reply-To: <ZXmwR4s25afUbwz3@localhost.localdomain>
X-ClientProxiedBy: DU2PR04CA0036.eurprd04.prod.outlook.com
 (2603:10a6:10:234::11) To PH0PR11MB5782.namprd11.prod.outlook.com
 (2603:10b6:510:147::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5782:EE_|DM4PR11MB5391:EE_
X-MS-Office365-Filtering-Correlation-Id: 8104f525-d01c-490b-2e26-08dbfbe29d4e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8dq35O6VtnokHTWzkidREttDhfUmjnYcvywXzq45s/RmfkaFmTFfr5p0Z0Cjt1d8GYmne+j3L06hAEQh4qXxmYvUfVC8f0Sz4PdR/uIEJ5z/3qsgbaFlvbnUtftSwYUyKICYlWe13E5IiK+st5sZ+K1+nTp9CD1RBGpFzKGTqDkVKlbbzK1dg9ucxSVQehhHheNjg2qGSHh38WUS7hEItSdpUKeHHNr3RuP2W2C381QOqyu1dpyp0oi8kRkOdWm0SK95BSFVrWKvaNzrIy651EWzaLZQDnHXDlhI1DboDKtyiVmMkRm0234Ta3qBQFFTgynboXuRZ8//qwo8EW6bjcTTypYYXYGiF/6H64q2UEjn28aWwSuGxTrj4/gOyoKZst4gwIoKz36dWnxB3OoWRomrKgwhY50yCa52HQuts22D42MqIrQ26xKgvvbX2tWaXQyS9K+geAkzDR5070cDofNs64bCVCJUD7RqUmi3kcz474qjAdsz8bmpf4RH8X1tnEn+UxH046dMaRCuNO80FTonhBTWcykkW15ywKiwGPhOpmU7OWLr5kSM2Lf09KOqASgNw0YSxUuvnSjWRYlWRlQNilA/XhXAvN47hBhw3G0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5782.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(396003)(366004)(136003)(376002)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(83380400001)(107886003)(9686003)(6506007)(44832011)(53546011)(38100700002)(6512007)(5660300002)(26005)(4326008)(8936002)(8676002)(41300700001)(2906002)(4744005)(6486002)(6666004)(478600001)(6636002)(54906003)(316002)(66476007)(66556008)(66946007)(110136005)(86362001)(82960400001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wj1/tvelX1g6+vwKyuJmuIZ1gLf7R3FgqXf7reisQ/z5dkS7P8M+/08Ot7N8?=
 =?us-ascii?Q?v6kFnTJr62pCwzHnxA2pCKZFOfazUP7SWxYt6mkAXQst+V7dxrx76MQtVjel?=
 =?us-ascii?Q?VMO4Re0ZDC7rH/9LLu1R+EVLF1XmeAF0s/FzCov8j3++DN3hgtvL1wnqt+Kj?=
 =?us-ascii?Q?5grSKoEjZ5x21Vmdf0ikRCwFA4wolFbqA6NGm0wSJC4atX72ZmTsvyfteGFo?=
 =?us-ascii?Q?3DuHx+uIdqtkvdLjWf11s5q4iiNbEN0z/ehGrjTVB0D5WiEl3XzIylx72SW/?=
 =?us-ascii?Q?btSoXZQbYNWtPrcLroiajv1L+iMjcXvvn8uQyH1VYbqmzPrgmEM3vdCfU0xA?=
 =?us-ascii?Q?R2mfRrDZD9CNMt2rtl1CQZO3nUDhJhxXxqYllD5ZUonMtVWFe9EUL02DCGug?=
 =?us-ascii?Q?YWijAhU4L/cKgvdhQmZ0HQwxtzF12WdHPRUG7Wj5q5sJsahJDO3IXw6fwrbH?=
 =?us-ascii?Q?9xPMFIKgGQF8ChCcb/nFrf2rG29DJ6PMKt/nll63/SOhqsd2JruHPMc34RvJ?=
 =?us-ascii?Q?HPkXecAkoOpMvK4KRqrbJ5olhuW/cgHPF5Mg2OSfYDeNQlkFB62ZQm+VG9Fb?=
 =?us-ascii?Q?rTqWIkUjyV2VoTqcucf+97e46ZkiVvmmyaHCCBJA9R9w2K9FDwQxLLWWOBPJ?=
 =?us-ascii?Q?xQdBqqHGgkVnPZKN07mIzlpWItDgnfljTOMcbxJmrL/yYTIvTM7qHuHpRJiH?=
 =?us-ascii?Q?OUUe4XE1lffv2sOS4R/HyZWD+h9DhrVjnhIT8exIuIr+6J88P+JTRaz+t+jk?=
 =?us-ascii?Q?cUjl+5nu0TLZ1MEZekFkVbUUw+E61jICG+XPjOdGZUdPRjxrju73UjsV8Whm?=
 =?us-ascii?Q?0LfDHKgMnxT3SuKXGgeTFLBYf1rFW5taR/RpP9JyFzUnrtF3NhVrt5vcR17r?=
 =?us-ascii?Q?ICgFQShbvMkRkQ5XETFqxVEb/E2rNoh/3J5K700hY4XmB8JuaiI2M/Woz8AG?=
 =?us-ascii?Q?W4PX7y8WRp8ehhV7Fa/78gYaOrUeL1g2EM29N8E4IaGWJMRd/g4GeoO/iD1S?=
 =?us-ascii?Q?Qf1pZpVKOxGh9fC/gbMUQXfSUxeYQLCgpJUuUmEumv+ghmKUK7v7bxx6aLlP?=
 =?us-ascii?Q?pMNBGRKZkEpwpizcuaQGe1dHjc4ITAg5SGRY6FMeLrnknN9cJVq6GxiFX1l0?=
 =?us-ascii?Q?Tow+OD6y6og8bYc+ZZQMKfOoVTXqSFzTqu/Z/Kygx+bk8hn5+weSpewPeEjJ?=
 =?us-ascii?Q?FFr+P4ZAeP7vKO21m9qwbGiU04eWi8/7yhHMkJTRlNyxbP/WeNqSF/N66dj2?=
 =?us-ascii?Q?HsQhZPEdCjC/uLB0mfsn2feM9HVUOy9VWGTQMSRGt9wEUkCOITWycI1Z5VXX?=
 =?us-ascii?Q?wuMraocvT0MQpvmF5MbJYpcTdH9LExYRQ5I4iFF0VDthnkV314jwJ+nzk1JX?=
 =?us-ascii?Q?WVrjwNnMu8CQBMuphrAnKt7ogIDxI9VjOiL+LoXO6Gdymx3W1syzwuatZprB?=
 =?us-ascii?Q?qw08XY0MDYRpUVEVoHVeU9xb1787KZyUJZ8t9CqtgXWbYtnW+3AX6AJGmcRi?=
 =?us-ascii?Q?ZGE4je39Z5SruygGcmLMLIZKw7ntY0228z8P3L2YRIfcujcwkz0scmbAGQTk?=
 =?us-ascii?Q?YYCBq5hl/WstH7pfkSBUUaol32FxE8fM5xvD5atcgfxVYtc1D/6FX9xwxaEg?=
 =?us-ascii?Q?mw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8104f525-d01c-490b-2e26-08dbfbe29d4e
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5782.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2023 13:51:32.4870 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UUsAwILfbIlmMEsjvdLVGxokiFNtYAqSSKmZxNBqCKRzdQGgkMO+LJnciVRBkv69ZuwX0ZEqxoGiR3v5byTI2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5391
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702475496; x=1734011496;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=XaC9jolpsVx6z2Nr9vbXFn8g2aasGjkVdTey2sfMYAo=;
 b=R0ShpxgdCCcNNfpPjPZxXaxOA55ft+DDn6UOxtfZjkCjv1GQOCLnUfrC
 EcxtZHr5fzIMvynJn7AxckoDrSAojo+W7HG6PBvUX5Xo68a8HuZTmqYLP
 khTdQpLmurLUjhNuaKNrgbdhKXMADF/+fPoPT2bCmGMnnpIFDw2mcB4S2
 /oODZQU1twodfbQi+qNc1c6d8TT+T3L93X4MG9MFPQdMHpUaWnNwjI+C8
 ZloleaWlHtXuojVRH2SAmRwykLxXZLV2/8xVItLjkzI9h2joTgVcg75/I
 YTeQ4TQWgErne8kGVfC4QGWCWqE4PinKAOXYEn8P7950bEuQrLkTibuHI
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R0Shpxgd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: enable WB_ON_ITR
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
Cc: maciej.fijalkowski@intel.com, emil.s.tantilov@intel.com,
 larysa.zaremba@intel.com, netdev@vger.kernel.org,
 Joshua Hay <joshua.a.hay@intel.com>, aleksander.lobakin@intel.com,
 intel-wired-lan@lists.osuosl.org, alan.brady@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 13, 2023 at 02:23:19PM +0100, Michal Kubiak wrote:
> On Tue, Dec 12, 2023 at 05:50:55PM +0100, Paul Menzel wrote:
> > Dear Michal, dear Joshua,
> > 
> > 
> > Thank you for your patch.
> > 
> > On 12/12/23 15:55, Michal Kubiak wrote:
> > > From: Joshua Hay <joshua.a.hay@intel.com>
> > > 
> > > Tell hardware to writeback completed descriptors even when interrupts
> > 
> > Should you resend, the verb is spelled with a space: write back.
> 
> Sure, I will fix it.

Hi Tony,

Could you please add a space ("writeback" -> "write back") when taking the patch
to your tree?

Thanks,
Michal

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
