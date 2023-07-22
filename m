Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6999675DA74
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Jul 2023 08:49:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ECA82417C5;
	Sat, 22 Jul 2023 06:49:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECA82417C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690008585;
	bh=oP/ZBQAxr90RSNbjiorMtrFzYcm2YuU6gXAB2Hqi9Jk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xwZJCxyc6ja6DOLNg37zlKaBuYWNNqyx4WnDNH84xE1MrWlhI47FDrmA/AoWGI300
	 7levpNavAi2bGEVnwdpt0/kq9ZbdxHQ87WaTeLSgl83ZlWWZJ01n3NmwUi8gTmvQU9
	 TEA7Gw35LwsIfKzHEpZZqxlOCkyGMzumr9LmicmoZ+vjniSQvVfW/B5UH1A9+SkUqB
	 suWptVVS/GgnGJuzq+yVRsmguuQWC0W5+QCAlFU23FDjqMWt6uaa5yzGD5K/4JM05U
	 b8QAqDCRnksYXP5mAQACH1BOCXeD373LtYgR6T+yg8xCobLVbOTdGc8bH3q+o3kJPg
	 iv8BbFu7Uqp5g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bGd9MFqm4KSG; Sat, 22 Jul 2023 06:49:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB4A8402E8;
	Sat, 22 Jul 2023 06:49:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB4A8402E8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 592061BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jul 2023 06:49:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3C05840923
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jul 2023 06:49:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C05840923
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NKytW1SHAkQg for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Jul 2023 06:49:38 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5CBD040918
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jul 2023 06:49:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CBD040918
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="346772096"
X-IronPort-AV: E=Sophos;i="6.01,223,1684825200"; d="scan'208";a="346772096"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 23:49:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="1055813729"
X-IronPort-AV: E=Sophos;i="6.01,223,1684825200"; d="scan'208";a="1055813729"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 21 Jul 2023 23:49:37 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 23:49:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 21 Jul 2023 23:49:36 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 21 Jul 2023 23:49:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WR6PjOGNKnL0D0wGRCr1RFbE7z/MrnN0gBgiY7OUO9KZ5ub3yTnbnqWrhm4IFl1k2XFBdfjmZEIffjd9H44zq4cP3OEOkWEt1+z4nd8oDMBIKGEDTYXkBpEDjujtk8IMH1rX7bVhQH0AMB0QoPXu8j2HHgUqB4OtQ506OjC1pMZEHuLMeZkDsafnCcEN8J1cDZGt0lfLMJHhAYGLbw6gm37MNGTVCs3CFLBwC2DfB3FL9TBw7gvAIclNy/7Y0asMA4apE1Llh3s2YAMry8Npd0iz7uInALVff0a3elMnHwd6A2mmcesterOLVQf9Vs8LHoJyFdMRPbvrWbzfJA+Gaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2bKFzXIMpDrWFRm3R7sFYXWW1QZ1x/LdwoWftbk9klo=;
 b=NaqZxWl75cHJNetMFckL+5YLUJylnaRqihqGAizvjcGyVjJpi77vJW/RJdsOON7EXDXuSpqlqUUPYT1luBwZm/S7sTvBASpzsglPNt4zEwuwDp3oTktM1wRxrjKnbxUs4qPoJgkMvAH7OY1qt7lSMvZFOPcnIfxBsmldFU8bfvwQPoA2gwZt0+VkAivbin4KBjW46csP4nmFAZ3Be888MPinzUgl2eJSUhhSIVHdSoPiZU7OZLOBMw2XDmpjALwja3pPsgspwNDoXRDyElgATexezSGK/+B3FUUaIoKQ5xkXbu/ezDmoRNa2AL52rnWXZGNr8mQSvvMbILjBplldHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SA2PR11MB4828.namprd11.prod.outlook.com (2603:10b6:806:110::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.28; Sat, 22 Jul
 2023 06:49:35 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66f1:bfcc:6d66:1c6d]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66f1:bfcc:6d66:1c6d%4]) with mapi id 15.20.6609.026; Sat, 22 Jul 2023
 06:49:35 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 09/12] ice: Add VLAN FDB
 support in switchdev mode
Thread-Index: AQHZtLDwV0LB362gckSxqw7fFrefp6/FZ9cw
Date: Sat, 22 Jul 2023 06:49:35 +0000
Message-ID: <PH0PR11MB501360B80A71892E233FE0CD963CA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230712110337.8030-1-wojciech.drewek@intel.com>
 <20230712110337.8030-10-wojciech.drewek@intel.com>
In-Reply-To: <20230712110337.8030-10-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SA2PR11MB4828:EE_
x-ms-office365-filtering-correlation-id: 2f042aef-351b-44a9-25fc-08db8a7fcfb7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RE5WFDLotnwHxqgcmCGBR0xgLGJNHfxwSqQW8hDOx+mqi/gkLlQ4/83/fY9LHNgjLlqdMqByNn0de8TVan5mip8SJjzUgujAaeBQLai6n98Bi18jmEFiR5BNtM8xR2REE2Tt8SR4Agv5zqccZTdbclF3YPE1ehgH6ds6wxSwluJauyY4x7t9VEcbKt9kQHb0Wu/F/DNcJIbkOVAh3s2doKPG/ZqRtt9hMlfc4htXNoqQ6xgzyteEplakm/vV/Q0dwONj1O4YM74n1yHlqu15euGsX/MrdrQDHDjSRis+xAKYk9GP8t2UmOASCKw5F0TbDaGakF7oTgT24n2HGqm+hU8/f5lb2JDvWm3XeQdglHoGaJGZrZOcROMHsCCshX3Y9Fy0ZdLXZRt8N6S24mfm9ongY3CSSAtMXg4qSUXLxqjTUn1G3RC8h2faoAoEg9eIooEMHN6dyIXr2WJiU+UJ/DpdrdZZvX0lKahBd3rbQwCrQ4V9JA/oDBItzcDCGE1JaUca7zCUYh6Ab5JXdGwXWUKosMOoqk14xqBZ2hzZvUAQzSo3cMxs9/WVKj6EiuDUYDekcJDYC6vkpJmG2/vByMyPR/ACGghQAebuhmC8ODVagsyed+fJw+u0rmdfYEuJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(366004)(396003)(376002)(39860400002)(451199021)(2906002)(83380400001)(38070700005)(86362001)(33656002)(82960400001)(122000001)(38100700002)(55016003)(4326008)(64756008)(71200400001)(66476007)(66946007)(66446008)(66556008)(186003)(76116006)(478600001)(26005)(53546011)(41300700001)(316002)(110136005)(6506007)(7696005)(54906003)(9686003)(52536014)(8936002)(8676002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5jPCwVDJI1FcSyAd6wzfiW2kL9oLjJmp3U/qlortDQfNY1B2+axHkwW9XVm4?=
 =?us-ascii?Q?cj5Po3TwZPTe6b+t3ZlMSxNWUYepuHvDhEnZLx9G2SXCZzkerIZkl7iDjANQ?=
 =?us-ascii?Q?sT/Rj8Y9jsUFPXifQ72GvHMuAZxtrXmDao4nyjz3AdvFORmjXTysC4y63Egq?=
 =?us-ascii?Q?yg8/Zw3XzEWf/YEzLzzftozLUfnRrin7+Px2K9LJje8yf7g0SJcTi1CKduCN?=
 =?us-ascii?Q?V/GQth0ebPfQQUMrYsMwTVw+l+PrfjE03t2WCG7VeY/jYs2a9wr6rBRMby16?=
 =?us-ascii?Q?QFvQSu0le5wguhhSy3PuUBIYbTTH4ygYpq5MRhvGhuh8LQWpxhBHWovFffqO?=
 =?us-ascii?Q?b6QYT2C3+SrZ+Hoa0XMgUvPoUxwlI0ngDa7gTHIb9hFH0uCvMpx8eKanYCAF?=
 =?us-ascii?Q?repSTXrSmmNW6Pr7VuUwoeDFkseL9NNu84euLGKtnVdbwPNvlFhn78gcRTA4?=
 =?us-ascii?Q?dY9qQtDI/SkFU6YroTZedNxqEKu2CfUGVx7RmYGRntngVJWS0MWtlR4PEMgN?=
 =?us-ascii?Q?gJsMM4hWjzhcLQ7JBYV+XGW2X4eKA/G1a/zz5K+K+lnsd+LPXXra4Wkvo/iN?=
 =?us-ascii?Q?k212rjeQJLLbPW+Lg0bV4JuywIdFopr2iWn8w3tSYe5BVogKPxmccdI6i4hm?=
 =?us-ascii?Q?oRtQfCFeRJQI3l3Ec/JdsQ57F+nLZoMGDkoFzSLU4vXVWyjNRw96XEt8LSSL?=
 =?us-ascii?Q?4mpZKikcZCTr9J5IDC99TzzHenD62SZ0JLiNYptP73nyvebS3S8lkjTG9gcW?=
 =?us-ascii?Q?/vc+B4pNjmsnDG2dgN604Pmbf4OaD1v5wbr3W/WtHiCpzCGF404inqcxX1ip?=
 =?us-ascii?Q?npnxed0zjlyYx0RKKjQlvoa2V3lLTJYjw6+RpQXx9iRzBIe5x+R/joaVtRkl?=
 =?us-ascii?Q?HlQdEMffbmAfR6PA+LEa4a3SoFsjQiC+5mIYVyPDNY3ofgI5AEgkFyAROWMS?=
 =?us-ascii?Q?PsLdqUiSQBULngX4LUaXVgp5YA6yrq+R2V1M6nNX9OmNoNdKKVmfbYODocCx?=
 =?us-ascii?Q?HxRnIx8How+yYYyTry4J/FNkhhq5KJka7x0WZI+AktqYSif3dH2+P9sKkmu8?=
 =?us-ascii?Q?gRQ01utmvaAn4thOPNmNeYNHgmkwguUeJuKrQBvEeX37iPY9F5Rq/js95A/Y?=
 =?us-ascii?Q?see711ep9NjiE46+rpZ1uHAuGiA3TbsGhVI2aZ3v+01NCojiJLj3J1egVoPm?=
 =?us-ascii?Q?HKUghWP6Rt7gY/HlXV9iOfDTukixZu/UYV5D5lH5BY6zLQSuh0p1Ek7MZrbw?=
 =?us-ascii?Q?JjIHvUhvBErGrIVn1MT+XaDno005pdEH6qVuqloQwHo/4HZs7TYxcFIH9mU+?=
 =?us-ascii?Q?FRCxu8ftpizDF8XyffsKppU3iN6pl5O+7mmnIRn7Up47byrslTC6lQL/2nca?=
 =?us-ascii?Q?bfgXU113t6oFlM5CwNVwCmYMTWt5cPTCQDSb7cIiQmq/Uf0ExHTnCqlNlpe5?=
 =?us-ascii?Q?WWDubuWV2xpSZoyRkDnpiUKHDCywhf2kFBGJqsULD0ZIGgYJSOhNiXJ2cwHu?=
 =?us-ascii?Q?kYrmXLtIqNQHSA0Blv4Irke3oYUjcJAHUzoZbAevNwt9vADy/llSpldd7uL9?=
 =?us-ascii?Q?Z6sCKi/whKdZtMqpkS5tYIKc+8vi0KiIa12WCICiGC3uagedrg2qMVLoUAOy?=
 =?us-ascii?Q?PA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f042aef-351b-44a9-25fc-08db8a7fcfb7
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2023 06:49:35.3329 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pepdBBvMTOXHtpt0THvJjV4OIyZ3lfoThnEd6At5hm7YF5lcw1NCmN63GlTyEVhGBMVPBpcUDB+CG1uzvQ+t7MFpbSXPUqGD+Uf7INIJhSg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4828
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690008578; x=1721544578;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ou+gwjy75rlN2Id4ONIqLXLCr3nqfSmsmgIK+X1aqHE=;
 b=WJQOpNUiT+QShKWEFIVLFAAbL7AwJB3AaK+ntxy/l+d4NE8LxOZkjT6N
 +1thW6ufMiP2irctYx3xGykYbxFeKMFoblDQReKNLg9HzTU7nkI6cYzoE
 nRGdwH8LSv47HKXi7UZolMP0gP3kBYky2H8k0fB8cogTDKtgPlQq+rPhv
 berqt+tlwKP7+ifJvI5AdyUvu3US+Lsx9RIllnu5C3JLiKlrfqaGS9iT+
 Eol3UgTWTkLnpgELWlOB+mkJqQ/rOrVxJNWdIlFdbG5diWv8/6PdTNJ1X
 HDuLPkKDGqH7C+w0x80dIE/Sy7TIq9JgxinKfnvi4RV+D/fi6NraS4ZBG
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WJQOpNUi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 09/12] ice: Add VLAN FDB
 support in switchdev mode
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "vladbu@nvidia.com" <vladbu@nvidia.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Wednesday, July 12, 2023 4:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org; vladbu@nvidia.com;
> kuba@kernel.org; simon.horman@corigine.com; dan.carpenter@linaro.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 09/12] ice: Add VLAN FDB
> support in switchdev mode
> 
> From: Marcin Szycik <marcin.szycik@intel.com>
> 
> Add support for matching on VLAN tag in bridge offloads.
> Currently only trunk mode is supported.
> 
> To enable VLAN filtering (existing FDB entries will be deleted):
> ip link set $BR type bridge vlan_filtering 1
> 
> To add VLANs to bridge in trunk mode:
> bridge vlan add dev $PF1 vid 110-111
> bridge vlan add dev $VF1_PR vid 110-111
> 
> Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: introduce ice_eswitch_is_vid_valid, remove vlan bool arg,
>     introduce better log msg
> v3: move inline function (ice_eswitch_is_vid_valid) to
>     ice_eswitch_br.h
> v5: introduce ice_eswitch_br_get_lkups_cnt and
>     ice_eswitch_br_add_vlan_lkup in order to reduce
>     duplicate code, rename ice_eswitch_is_vid_valid to
>     ice_eswitch_br_is_vid_valid to keep the naming convention
> v6: remove FDBs associated with the deleted vlan
> ---
>  .../net/ethernet/intel/ice/ice_eswitch_br.c   | 304 +++++++++++++++++-
>  .../net/ethernet/intel/ice/ice_eswitch_br.h   |  21 ++
>  2 files changed, 317 insertions(+), 8 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
