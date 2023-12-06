Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D53F18076DD
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 18:45:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9FEE420E3;
	Wed,  6 Dec 2023 17:45:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9FEE420E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701884752;
	bh=uVd6bc++8AqGJ3bDxlYEMs51CwLqZINaCY17xTTT8fw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zYpv898bp2kXSsqqilOuolMBOp13daX09hvfpdF2aZz8/CHtjlru4WLrF/BbOaAwV
	 U+O8/VsXFr7E41eUnyFRL1xnquxu9mLPSpWMdSc3fSSFl/hix9vp1tHQr3FHR9/P9t
	 1n1xs8ffkl+UbrPCOiHSKSb7+66Q2vzIHXui6pdpdktyqaXZWMeEqfL/J2ji0gEhVf
	 OQZibd3kET78oihbDA8Mh3RpCWHic/Y5VwRA2+HUM08kF5pOLOt7nM8fBdiVL8c7JO
	 Bvi07M/CyBzUgvbp8OUCfSmvvmvgvFZzCPXnIEHDvdTUuf3HqKXBlJUq/pr9fSkD8m
	 g/dfCa19/sRWg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id acP6CHybN8Af; Wed,  6 Dec 2023 17:45:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 083C3420A5;
	Wed,  6 Dec 2023 17:45:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 083C3420A5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5187B1BF33E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 17:45:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 288D5436F0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 17:45:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 288D5436F0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SeS6YTeWnV5L for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 17:45:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 10926436E7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 17:45:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10926436E7
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="393827940"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; d="scan'208";a="393827940"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 09:45:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; d="scan'208";a="12794228"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Dec 2023 09:45:43 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 09:45:42 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 09:45:41 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Dec 2023 09:45:41 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Dec 2023 09:45:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OWgMMut6EzLXrsyb73JIdaXa2yikOfbK6KbJRRbtPNxV9MoqASfX1tCaYHiJH2HCbQPiFuqLjVtgCbyOyAFj+z7Zkl+Dlk8hTZx7LQjT6omEtceSGkS7e17BDVQAFZol/7ygMDvJ4YJ9eEnX+0ugQGFw0vqVT7hd6T1w1sqfoLERQ2S0YZIlmOhzhEWX2XGy7PTVMc0zPF0JT4G6xZdQKskSe2er6qt94tlJf09X3E0YMxmfr0TAgMQ8VVh+7Avb5HubM+cu2kF+X8lDBWwu00ZGVssJLtk1PEt0T7vT9FylwHBuNt6jXBAUnC+iSjTuoPBRVpuj9ppjFIqZExFMpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/cvttgBZ3BaLz2yoyyQTkcJo/XMB9c5rCGun6Y7u8V4=;
 b=l/OAg3A91aLufwes5QKuizIoERQaFOwJgIg5zjtDwYCpqK5Z/7aQkdRVyUx43j9fxtX1GyLfhn2VQLTAbGB7c6djdgtIrEt2xQ7XSaRnWj0VRErqI4jy6XQfPaTQldPRvc+8JrAf7WfGOGOxKI4Ur7mq1kz0UiOm1lNta+pMt+R//L12cwOa7uh/iVokeSqkupEsM6k7buwgaP00Vjdr7eP4+OSAt4OkQi4qinoWLhhfpxRQA1twt5/b53YsUBCrQ9gH9tINbrjidtepnTIPVtjVSzImjb83VHzByp4caWKkRmubRcPDsAm8viPjfDmdEX24Si2DEQ5RjN3HE96aKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6748.namprd11.prod.outlook.com (2603:10b6:510:1b6::8)
 by DS7PR11MB5991.namprd11.prod.outlook.com (2603:10b6:8:72::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.25; Wed, 6 Dec
 2023 17:45:39 +0000
Received: from PH7PR11MB6748.namprd11.prod.outlook.com
 ([fe80::7c0f:4cd6:d4e0:307a]) by PH7PR11MB6748.namprd11.prod.outlook.com
 ([fe80::7c0f:4cd6:d4e0:307a%7]) with mapi id 15.20.7046.034; Wed, 6 Dec 2023
 17:45:39 +0000
Date: Wed, 6 Dec 2023 18:37:22 +0100
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <ZXCxUkkJ72SIhGt2@baltimore>
References: <20231205152620.568183-1-pawel.chmielewski@intel.com>
 <8eca364e-8796-d01f-ead3-2a419a9f7658@intel.com>
Content-Disposition: inline
In-Reply-To: <8eca364e-8796-d01f-ead3-2a419a9f7658@intel.com>
X-ClientProxiedBy: DB8PR09CA0008.eurprd09.prod.outlook.com
 (2603:10a6:10:a0::21) To PH7PR11MB6748.namprd11.prod.outlook.com
 (2603:10b6:510:1b6::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6748:EE_|DS7PR11MB5991:EE_
X-MS-Office365-Filtering-Correlation-Id: cac8a52e-fcf7-409f-3416-08dbf6832903
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kZryyMCPauVS8yeFPt7358DUDwUSO5crLv3U0nHxtXpNUb2Gc6lcB62EI3bis3RS9Mk2/KJSJIbBMyco9Y9kM05ll7VbUZTuXUBelqH5PH7pJ4hBQtLAaNmZcx0N1GHGLd7RpehGUcTzSDt0tNnqiIOBlfMFG8FftA+2aSJewtxLfj4alPWLQbepAw1SoQxlfHA4VGBbs/TJWwyT/+TE9mP/o6mMDVE4x2ehPLJd15MLkZZ1fvD2aTkI0GdR7Dcn1MuWBZPggBPsq7VB1LPAfipfegZWMaeWCq2O3C6ZHs55VOExeATPrSaJkDTJh2I8qD21O9ny0P6wVr6R1M2rf4/NTE3v/g4pwhTmLKQZKkKTUL27RewfdtTzzeF60TGjV1nRizW6mFomqwvyIgM2RIcVAL2/3rQqa1bgJjEVNRV/SaogFub3ddr77Sqje2lMmA1VLl6Mq8ux0HHPO+8QlF2LaWVOF9EY/aRIIqOgxxnfNhIE0YadSaEbd4cbEteDBwNDcc2f5OSlb/vd4mfLOn2a5TW8KezAKrTEjIpHOW2OxdYKzFtjkHjRhip0KRWB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(376002)(346002)(396003)(366004)(136003)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(6506007)(9686003)(6512007)(53546011)(26005)(33716001)(54906003)(66476007)(6636002)(66556008)(66946007)(316002)(38100700002)(6666004)(107886003)(478600001)(6486002)(6862004)(4326008)(8936002)(82960400001)(8676002)(86362001)(5660300002)(2906002)(41300700001)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Lp3rwDxxmy8WgQF2uTlxQDbbdChwagf0uU0UcDUDb7e3vYja9WlGeiKUuVlO?=
 =?us-ascii?Q?W3hGIkaG5krIETdD90INE/bozUFoiPgX2YlXTHQ1b5V5MymBBMmT8RgCcfw5?=
 =?us-ascii?Q?lR+Bt6aSnyPOII9pcTEmLFAknw/hql9LjcT3FAH6931CmmLfrgE7V4wEgLGB?=
 =?us-ascii?Q?M0T3q5p6gtWarr04wzrjBpzEMT4KvPk82pfMiBzxMSUZPmSbrlw5D146l1vn?=
 =?us-ascii?Q?DnW96nOkSLa5CS1xzX62X3hjIHMKGUCoRvul9HLuSe6pL+MdJsyM4DFVpFyi?=
 =?us-ascii?Q?PXldJ0pO2o6+O7m0PTaBVzXBGlpSuk5Qya7xRurhVNJ/VSXwb1W6BXAVuCoV?=
 =?us-ascii?Q?2N2e5UUPJwj4R/ys1647D1TEkL9fqEeZsgP+PBpX6dFTV8jpMO2r2yjyqQij?=
 =?us-ascii?Q?SQqMFPr+9AIcIIv+jnBhHgKtp/K7jToCTPqUH91QAn0EBJW5FXXZ++F/FvWS?=
 =?us-ascii?Q?lxzmUGlMVU/IzEJ/gdBkoPAF4PcQmgpcbqbKb0BuSIpJJHJfXRUZmrGAawJt?=
 =?us-ascii?Q?2kS5Qr4Wlf75ZwSqsPj8LAZaqQUzwewOmsGg66mYbCp3J3+I+UBNSRLN/gk7?=
 =?us-ascii?Q?y/2y61iBhBfXMHnVgVzbPdMhFAw4rzjcgpBIkEXoL6CcdBGTSwYV+w66cXuk?=
 =?us-ascii?Q?Mh9H19GYnIPGyVu59K850jJbqftJjJ74Ge9kfrM5WoocKRSz8rJErz+7W2gH?=
 =?us-ascii?Q?L40aWvJoiHabtTVgCXcZjAwokayIbgWaB+uM6pgaIXPGin42g1Prh0pUTwD0?=
 =?us-ascii?Q?E/5gM79t/bja84kItnxIRywUDd03JGqvBy+DTZ0YWCS5Ohf+bRRSUwVA4tXF?=
 =?us-ascii?Q?ia9UyxhFj415RQfBWGs4gA58c0xKDNyobZ7MOUnfZc8OYyEZy0dzqnWYrS+E?=
 =?us-ascii?Q?tbFq4T0L/panX+z4t7hnIKbUJesZ1q9FJDA9BKBhyuOODVkLu4tNVHXrRhmW?=
 =?us-ascii?Q?bbLvIJ9hmdYk9jSCbevPN4XeWNFakM7Xv06aIGrlX+zwHXYOk2B43XMVPhbK?=
 =?us-ascii?Q?gHIwWnj6iQp1VAjdRCnfc9YXroJZvM2CVPQBwQoxQvkB/9C7eW/MyLbYvi8m?=
 =?us-ascii?Q?u/Tuijs/yzhpFIsgZ9m6IwQ3R1mzLom7aZRCwSZkvKBp0QdRUAkft1pC8MXD?=
 =?us-ascii?Q?iGwD/o11aEz9sRN6IMGKfzpVNRr7ouDroZzpDn8qzvXgdNUCgGSwihH17zEJ?=
 =?us-ascii?Q?Oz6ziMMJWA6Rrv6S0r7S/9dyA9iKUC+0WU1iiPvkPsXkJLWoAJuHOPEyU7Lf?=
 =?us-ascii?Q?cIdkoCbrMpXwVu9kJ60JDLAGVf6LCGEYcEQl+F1X9yTwY8L8hYrY2/j4vHho?=
 =?us-ascii?Q?QIN/DtBFomjEDLWfzoVea/kjvzGa+T1PPS7xS3jiZWm8q5XuK4BYBi+adhiX?=
 =?us-ascii?Q?UPjoTJbW/IgoTaGe6+Ed6CneZ8AQpJLS9TCpY5xnn9e9lQApRW5fy5wuj2Yy?=
 =?us-ascii?Q?8raWAjbCM91siSIjOxpO9wJZ1Bw/7UQ6b9hGR6w3AY3VHV9ImpD9vzotpuJF?=
 =?us-ascii?Q?fvHnhQ6Nxr4TwgEtC9qiwcGTzhikNjLaHGlaaqikud+AyWTL5zN3qeffLAFr?=
 =?us-ascii?Q?aE0hmikgWXsxCcseIL5JHJpwKX4tfLP2C9H49LBLuQD9QZ86zSSROUjVM2tw?=
 =?us-ascii?Q?1A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cac8a52e-fcf7-409f-3416-08dbf6832903
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2023 17:45:39.6085 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YqIuJsdH0eQ9nJlH6a18gZJ3uWQqHZ3G+BDQ2UwdJqn5loq3tOc3jrWsSKwQpaJcYig3iA5qEFdQn8HeAQ+Ijt+46kQLbT1yrV0qmWCSxFM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5991
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701884745; x=1733420745;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ee1CCrCXnFAw322gMgcPOINLPb0KvFXXqFoCGQF3sRU=;
 b=blKi892liVmp/ovLI0d0XLqaUPme3Kv5+4UepRMHkUQYMybXJ9BuC6z0
 R+E9o45iIo5RZ5QHT2bl1bZSWuk5p3V2JUdCUjnW6QUSUKznJSdtQAmwF
 1prubrazb86fl9S5XKwwcfBL1NHQrMngBPYnFl+iq9bDIETBV1CHzB/CE
 0X20bayCkuCoqFFrGNVx0Imh+QGLzk2RKxu+IouT5EV0An1ubAZiBoU/+
 rRvuvYW1uCqDkUyToYq0Hn3I2RUaRJE7efGystCE1xkoLlWD9noNHpnU2
 IH8ftOvPhsN82b5XEKqm16gShB/dAKXlyPrjXnKitC8Bnjlv2e8TeGZ6M
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=blKi892l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Do not get coalesce
 settings while in reset
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
Cc: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Dec 05, 2023 at 05:09:48PM +0100, Przemek Kitszel wrote:
> On 12/5/23 16:26, Pawel Chmielewski wrote:
> > From: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>
> > 
> > Getting coalesce settings while reset is in progress can cause NULL
> > pointer deference bug.
> > If under reset, abort get coalesce for ethtool.
> > 
> > Signed-off-by: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>
> > Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> > Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_ethtool.c | 3 +++
> >   1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > index bde9bc74f928..2d565cc484a0 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > @@ -3747,6 +3747,9 @@ __ice_get_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
> >   	struct ice_netdev_priv *np = netdev_priv(netdev);
> >   	struct ice_vsi *vsi = np->vsi;
> > +	if (ice_is_reset_in_progress(vsi->back->state))
> > +		return -EBUSY;
> > +
> >   	if (q_num < 0)
> >   		q_num = 0;
> 
> Sorry for a late review,
> This asks for a Fixes: tag, and targeting at iwl-net instead :)

Will fix the target, add the tag and send v2 right away :)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
