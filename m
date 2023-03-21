Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 594C56C2E24
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 10:44:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F354D60BBA;
	Tue, 21 Mar 2023 09:44:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F354D60BBA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679391846;
	bh=2v/4BBo7466P6uPBVSMnkUEqaxJAjvgTfGU6DZrjoes=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jCbXMtTzs8PCj4aIN9Ed8LG143rWCuiatheL3aEdypDKgO9dapISMNkP8aLrOOV7k
	 fDQhc1D0ryPjE6UHKGqOKDXtkLsqULEvPMYVoH5B2rp67qO1goNQ9gLqmy1BPizTRw
	 Op/0UJuIaY75/anHQvLD3h1OyUTejZfUBhtDsjxSA+UW0Nv/g+ZllSREiYfrIdugQE
	 +mSCmRmb1DTsOepDR3ayDwKBCItishAxGOf+4t11IukeCHmW5C091YsGY1yaA2p2aA
	 Jmf7fPiUp3spfhsasTX7PWo1pIP6zQLTez9XFL/W+QoBbGilzN2y8iuOfXqk7DHavR
	 QMVqc/x5DHneA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i0KgBTUzdW3r; Tue, 21 Mar 2023 09:44:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A833560742;
	Tue, 21 Mar 2023 09:44:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A833560742
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D85CB1BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 09:43:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AEE0540B2E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 09:43:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEE0540B2E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4njbzVEDG75k for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 09:43:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A7C24409EE
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A7C24409EE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 09:43:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="322737109"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="322737109"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 02:43:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="713923678"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="713923678"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 21 Mar 2023 02:43:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 21 Mar 2023 02:43:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 21 Mar 2023 02:43:55 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 21 Mar 2023 02:43:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hJI1jkP4zixBTvYAxCSdBZWdTvnQZJapYlUhZdb81UGeMSPgLlXe/GVjSwdOtbPz341ppesyexV/34j/3JyU6WqOOzcXFysdpT66Xt7Qkd/UTeXS5tTDCrAcktXP1u8XbdQ3fzLwEjrTH1Zw8mOJr9Pgo6m0ucfmyywDPlc45wJ7vqaSsJ2bozrQmi7Kt3bbV388wQBjPQl75WkvozvqN44vY4h2zXBgVL7V+XwSSnfJ1JTsNkkrfTr5PIav+FIYmFuxIm+xvi2ny+6/jv9p3F+loxILNvcsZZhCCpkunLwCn+VpsLCX34AeMQ8Tk8dMZYN4hZyvznpHrvjyr12C1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Ca0oc46DmF/NkF7OzJTHXylg0cEqXqIqA35AKJEWgY=;
 b=RhIyhYHyQWoOc9C942iKTHvAz9mRlfCv+QyzpUckRZNbAQTg+CuTRqHgSfDzr8mT6gzBty4iueiQUq2bjcX8L+WO6kH3nKqX6HzqDRNRIMSR9uyfaHFQpwtd0lKDew8puIQS/tVLCYNuUKt7+fuSbGa26ilJuYra4aoVe0xh3XDZvMSjkHr7Wn6eGEb8uw+mFAgJs9ZQBFJegL6dz4ya2ffWkPF0k9m69+PnwNbxmXWAkBWpRIICPV/9W81ZxKWpKNnGwrWsnTSfU8hSDY/BiBW0WlKumclDQZcTQfDZ6Qsfnr4YxdFFEoq75Lcv0hRRo4HDpe2k0QJmXqcx3LqxIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by MW4PR11MB6668.namprd11.prod.outlook.com (2603:10b6:303:1e9::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 09:43:51 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958%6]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 09:43:51 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] iavf: fix hang on reboot with
 ice
Thread-Index: AQHZVcdMoGBF7Zii+Em1rlW3WB+FH676VbMAgAqxwWA=
Date: Tue, 21 Mar 2023 09:43:51 +0000
Message-ID: <BL0PR11MB35218B939D6D6F95709906348F819@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230313160645.3332457-1-sassmann@kpanic.de>
 <ZBCDhCjim+d4TmMD@localhost.localdomain>
In-Reply-To: <ZBCDhCjim+d4TmMD@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|MW4PR11MB6668:EE_
x-ms-office365-filtering-correlation-id: 7d3b8dc7-9d5a-4d10-f2ee-08db29f0c728
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m9AteK9//JZ2UtFWi4Q+ySy6zWz6Jgg2MXD59JA+7FcFfqx9dT/RvJjR+NdLKsOlw6owXnDISXL1lHC6edl9g3+GDfyeIseebDY0nn8l2oxp5bcK2QZj5NspRWNdqvLvL3qNsdfP6IAtZJ7JmuOTD8WsEpE9f+1gBAu1XcOqDPu9rFpiLWfa6na5+ef9miOh9bQOrjoNm49ll2Bgjlwne2SjxxX3RpeAe++GYBkx06mSeDYJv8qLlCTegvYRMBM3/mEFZJTyrexu3Ya9P9dKYF/IIrsLXHUNxAjtmW/szfBN2CJgB9dB7DpwD8iM2NWHB3vhaPLX+FA0HHhB5nQHLQDmNKa6dGWkvh+nE04MHhQYx7uaIdMyuyoJdN6JRWyOa//fo14CZ/KIZ2NmQPHBimIq3H3QFRhJcoJTxRml0TBUgMEAnT7k+WEBfI+du3dlpA5eOXSdRbHrzqAZELozCpILSvqbpncojEaK/12LSwtg9ogjCiVMqakCy+HFv7ar+lngREAlM1/SiM0mEvLUQDvhP1jux+SjMAi/AflqZAzz3KE6yyop4DwaKuW8c2vAM8RytgpjazIaqUiKFqUvCLbki+vKAnWObi85lCrngPf1s6A9H3UuEkBQEqfwPcDSfcEzdwpjozbH8EMo+vE1Hal3xWvF90h9f8I3jmlwwak8f0LHYeT5sKRn0n1UGbiwGmKjSBWGmQEO2knjJRC31g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(396003)(136003)(366004)(346002)(39860400002)(451199018)(8936002)(41300700001)(5660300002)(52536014)(55016003)(33656002)(86362001)(38070700005)(38100700002)(82960400001)(122000001)(2906002)(6916009)(83380400001)(478600001)(71200400001)(7696005)(186003)(6506007)(9686003)(26005)(53546011)(316002)(76116006)(66446008)(64756008)(8676002)(66946007)(66476007)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qtRX+D813LmbhkGJtSChq6ZpurrC3+R5ATAdsf5mYbvDpwVFCMz466iYkH3q?=
 =?us-ascii?Q?IT2HvH1SE3qN+3LrFZw8Ah3M1X+HSqva2pSPpsoll9A2O7wM00gJ2SGw1mXu?=
 =?us-ascii?Q?kjjyLxpydcq2zDvDRec6Eb6zMVZxe0MtXCWy+wYc30RWY+XJgff/5L8Xy5Sb?=
 =?us-ascii?Q?orLnQNmGU/ZvlgRoSHIIrcO9vArBMkN1rc8xVm7pPOlyWgBtF9Gx6xxzLThT?=
 =?us-ascii?Q?FM1thSnnyeg3Hnu6Si3fpdVwovr8xaitAYPQ9jdue0+AXTzsD8p2dEBOAI+l?=
 =?us-ascii?Q?4NJW4E4+7rvMi2Q276ucjby4aTxtilGys9DNwQ8ab8pg0nxUpVpWrvNbx3af?=
 =?us-ascii?Q?EijskpVsR3L+PNqLKOEbm82SLVJe7ndq1/WviDpNNd29WNHEek6ZwfCdTStX?=
 =?us-ascii?Q?wuTV+1QpSnY682Zq1HipD0fjzRCo9RBV/K9SIJdurtT5QEbryGym26Dcj7j4?=
 =?us-ascii?Q?fa9vlVyvUQUBB+umUNkhfq9bWVEIk23IMb7p58siCaj+g1oJ2sdVQISXkMTn?=
 =?us-ascii?Q?jxitX0/HIq9k6QSUpX5lpUAHpfQmc6z0xbDbiWl+FxQJVfCguKM3hU6cbSpJ?=
 =?us-ascii?Q?uKffD7BtOG7Q//s+VnCbq/Bcr1nti5zgRX0IVu1Aa1Yig2gj+VZD/G/FiW2y?=
 =?us-ascii?Q?OlzRW0DNRXqMt8nn3qjZLqQxWMytuGMIKDIKAuv3O7C44SABPAiiiabT25ws?=
 =?us-ascii?Q?v5KDNdd02r1ca2Am8a3fxaJuVu8RRO/b1uO9YerhzZxk8ClbDuPugLPDP5It?=
 =?us-ascii?Q?dhM0GCCnL9qVE54CFBW2ijXmbuWIKuSrxY7MIovotr16s1PMF60PyKryxAlf?=
 =?us-ascii?Q?6u8NQNnanl6J8C56mYb7hK3Poo4df/JxgUMj4NNyQvt+cgHUOmItnMxAQKOM?=
 =?us-ascii?Q?v6cgghC+rd90khYysFJ6RAe5rVjHG7SuKjhJ5wnRam91Qcf84Drvd9pVBNVD?=
 =?us-ascii?Q?Rh9ANb3Ymb/705m9zbDdCgNGIO1j9T+aVERiOwYoROv8BFGuWC0j7R+XZZ19?=
 =?us-ascii?Q?RfAinCxAby/GwFi7Ybqvgu8vXetl5bubdIfWbq0Tq4uWmUG3YeJb0MsyWFS5?=
 =?us-ascii?Q?EL1GAWrsBcjTfCpki66xK5TwsES9viaGaXogJhwvG2USCZ1niXk6f4z1YlAW?=
 =?us-ascii?Q?qCaaYfJLTEhA35bjvWfGlq7QoOk19AteaKX1sUwgJMRnLqmV7piOxiC1bb58?=
 =?us-ascii?Q?MuCUSnRqGs0cbnyErFAUAa37PxdEBGcxq4exMW5eHtkpATjOBHHBq5YeLhSi?=
 =?us-ascii?Q?9HkqQZ8dhqMrbjham3kjP67Tk5pUMBIC0MUByqJxrn9+ZHqfuaegyrfOo130?=
 =?us-ascii?Q?isuGqzqwkzyxpf8vBZ+Trx2U3/fA7hBqh7eC/Z5kHTC/8WDqTl6rTQZr+EMr?=
 =?us-ascii?Q?bBCkxiLuhvdjYT9k7lL3DPyvuSjaR0vwMRM7/31tycciY3STNInKU3ov5l7+?=
 =?us-ascii?Q?Lgv22t6NPD8dNCDtVO+V1acXwVRH8BvaT99izU4NeiXxNhcQEqrf9NUOYG8t?=
 =?us-ascii?Q?ek/tVg2fGelYdqsMyj0o5y+3N1LqOxETgFNO+fAx3IZFTfk+g0QX2kUG2hPV?=
 =?us-ascii?Q?K1fl9/8rVnKiv2+a28Q1Zl3yN629C+BB7XgA4RATBj9rPqJOaPkYBvi9YeNm?=
 =?us-ascii?Q?0w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d3b8dc7-9d5a-4d10-f2ee-08db29f0c728
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2023 09:43:51.2671 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7UOjIBlwVhrmG5tAEwAsy9WoNGR2pylMDuREffuxpvD6QNfaKXw/DnQb2+VUMQXi8vtfr5QEw0uwtKIZzlOJ7dsgqLAPY1yU8t/pTTvzMV0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6668
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679391837; x=1710927837;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Q/bdt+N43nwcKryUOwBisN6aFmSIgX9REHAIwsRlgvo=;
 b=ipE7EQoZPqIE2Xh7k8gLOvouhOqW4/0BRFUjtGC/qEoMdh3HTP4IZPot
 rDoqTEk6Pdar5hg3m34Q457BwqldyH2ZHUlxRGe6AhRq9522/9g37jOBr
 9y+tjORKBXySQXbM4UwiJgE3CubT77MZQaVE5Y8rnx1chpLTbBTbZ3cU+
 XrGAWmj1UNYUigABiW6cyK7ImEeBk5Lz+vr6iL4Fvvf5IrL1Z21INS6RF
 zi7mrd+fr+k865Yhqz8EItoQ1Lbz456JI3ir2LPbe+M/8EsBorgq5BNI4
 ByytcjNQdfmk3mMZQYplXC8GgvIXaftknaLW5FORm71abmcpHPHp/zzmy
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ipE7EQoZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: fix hang on reboot with
 ice
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Kubiak
> Sent: wtorek, 14 marca 2023 15:24
> To: Stefan Assmann <sassmann@kpanic.de>
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; intel-wired-lan@lists.osuosl.org; Piotrowski,
> Patryk <patryk.piotrowski@intel.com>; Laba, SlawomirX
> <slawomirx.laba@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: fix hang on reboot with ice
> 
> On Mon, Mar 13, 2023 at 05:06:45PM +0100, Stefan Assmann wrote:
> > When a system with E810 with existing VFs gets rebooted the following
> > hang may be observed.
> >
> >  Pid 1 is hung in iavf_remove(), part of a network driver:
> >  PID: 1        TASK: ffff965400e5a340  CPU: 24   COMMAND: "systemd-
> shutdow"
> >   #0 [ffffaad04005fa50] __schedule at ffffffff8b3239cb
> >   #1 [ffffaad04005fae8] schedule at ffffffff8b323e2d
> >   #2 [ffffaad04005fb00] schedule_hrtimeout_range_clock at
> ffffffff8b32cebc
> >   #3 [ffffaad04005fb80] usleep_range_state at ffffffff8b32c930
> >   #4 [ffffaad04005fbb0] iavf_remove at ffffffffc12b9b4c [iavf]
> >   #5 [ffffaad04005fbf0] pci_device_remove at ffffffff8add7513
> >   #6 [ffffaad04005fc10] device_release_driver_internal at ffffffff8af08baa
> >   #7 [ffffaad04005fc40] pci_stop_bus_device at ffffffff8adcc5fc
> >   #8 [ffffaad04005fc60] pci_stop_and_remove_bus_device at
> ffffffff8adcc81e
> >   #9 [ffffaad04005fc70] pci_iov_remove_virtfn at ffffffff8adf9429
> >  #10 [ffffaad04005fca8] sriov_disable at ffffffff8adf98e4
> >  #11 [ffffaad04005fcc8] ice_free_vfs at ffffffffc04bb2c8 [ice]
> >  #12 [ffffaad04005fd10] ice_remove at ffffffffc04778fe [ice]
> >  #13 [ffffaad04005fd38] ice_shutdown at ffffffffc0477946 [ice]
> >  #14 [ffffaad04005fd50] pci_device_shutdown at ffffffff8add58f1
> >  #15 [ffffaad04005fd70] device_shutdown at ffffffff8af05386
> >  #16 [ffffaad04005fd98] kernel_restart at ffffffff8a92a870
> >  #17 [ffffaad04005fda8] __do_sys_reboot at ffffffff8a92abd6
> >  #18 [ffffaad04005fee0] do_syscall_64 at ffffffff8b317159
> >  #19 [ffffaad04005ff08] __context_tracking_enter at ffffffff8b31b6fc
> >  #20 [ffffaad04005ff18] syscall_exit_to_user_mode at ffffffff8b31b50d
> >  #21 [ffffaad04005ff28] do_syscall_64 at ffffffff8b317169
> >  #22 [ffffaad04005ff50] entry_SYSCALL_64_after_hwframe at
> ffffffff8b40009b
> >      RIP: 00007f1baa5c13d7  RSP: 00007fffbcc55a98  RFLAGS: 00000202
> >      RAX: ffffffffffffffda  RBX: 0000000000000000  RCX: 00007f1baa5c13d7
> >      RDX: 0000000001234567  RSI: 0000000028121969  RDI: 00000000fee1dead
> >      RBP: 00007fffbcc55ca0   R8: 0000000000000000   R9: 00007fffbcc54e90
> >      R10: 00007fffbcc55050  R11: 0000000000000202  R12: 0000000000000005
> >      R13: 0000000000000000  R14: 00007fffbcc55af0  R15: 0000000000000000
> >      ORIG_RAX: 00000000000000a9  CS: 0033  SS: 002b
> >
> > During reboot all drivers PM shutdown callbacks are invoked.
> > In iavf_shutdown() the adapter state is changed to __IAVF_REMOVE.
> > In ice_shutdown() the call chain above is executed, which at some
> > point calls iavf_remove(). However iavf_remove() expects the VF to be
> > in one of the states __IAVF_RUNNING, __IAVF_DOWN or
> > __IAVF_INIT_FAILED. If that's not the case it sleeps forever.
> > So if iavf_shutdown() gets invoked before iavf_remove() the system
> > will hang indefinitely because the adapter is already in state
> __IAVF_REMOVE.
> >
> > Fix this by returning from iavf_remove() if the state is
> > __IAVF_REMOVE, as we already went through iavf_shutdown().
> >
> > Fixes: 974578017fc1 ("iavf: Add waiting so the port is initialized in
> > remove")
> > Fixes: a8417330f8a5 ("iavf: Fix race condition between iavf_shutdown
> > and iavf_remove")
> > Reported-by: Marius Cornea <mcornea@redhat.com>
> > Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
> > ---
> > v2: return instead of breaking the while (1) loop
> >     This avoids going through remove code twice and is how things worked
> >     before a8417330f8a5.
> 
> Good catch. Indeed there was such a logic before that patch.
> 
> Thanks,
> Michal
> 
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> 
> >
> >  drivers/net/ethernet/intel/iavf/iavf_main.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > index 3273aeb8fa67..ce7071e9af15 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>




_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
