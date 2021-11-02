Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 11670443953
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Nov 2021 00:05:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A482E402F6;
	Tue,  2 Nov 2021 23:05:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3y9gIi0rVQjG; Tue,  2 Nov 2021 23:04:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFB124027D;
	Tue,  2 Nov 2021 23:04:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3CC9E1BF406
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:04:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 389A24027D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:04:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i8JyYig2OckY for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 23:04:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B0F024022E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:04:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="212139182"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="212139182"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 16:04:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="541425160"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 02 Nov 2021 16:04:54 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 16:04:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 16:04:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 2 Nov 2021 16:04:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 2 Nov 2021 16:04:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DcQ780Sl1UnwxwR20jtSaiEPY2N02VdzIgp46HVPyjDHWjLPI5Y7yPSZ+P7hYVmTokNu0Aq6lOouVciYSBI6QHP1ju1xy53P4242MpBSpfUrqnwoXJyM67z6IO05mtGBbcPxDvN+UhFuIldhuqYKLGpL+BsdU2BOqZxCxH5T8W4FI28gzdOMSodMcLDUX9057xaddxBBm5t53CigvJ6wFE0tdvwKsXqFeK2PHdTWjJhdb6xCUbuv/B/qKH/fiuWa83pDgXlAK3/bUx46iAa+KOzYs3MKe8aRgMm5CHUipcmUEEMK4MPzW7FccgxgwxELD0XrcYFW3w8LvoOM2co0kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jzoNAx3py5H999y5xD2mfpGDRFIpXgr68400lm6E3O8=;
 b=LuLzB7XU6G4gWjSJQCFFYIgIBLsE1ndaivh0KQXXwXyTQ3Y9lJeLmKO1rt2zr9Anr8+uVkkKZFiJvByaPiR0wJp8Ot5/yCcAWtoNEQNErnQu2hRxmkByNM0WDMcJFGjEvS4Nyq59U4xL+FaFpLMv05HHMHkj522Drzn29WkC6sJbSTrvKo0IplRF3Wy5BnA266hKnf0bwJfmPdWXCV/cyFLc5zC8GIW/hrw5qUJw+KxMbeiF2SX0qKA23ZGS1yoM52kTfAch15gUi/7/s81ajb+3Bp3/gTDU/NoZr12uMU49hEgxAuqnjPh8+/FsReagdBlaNYsjQiXB146s4ecMsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jzoNAx3py5H999y5xD2mfpGDRFIpXgr68400lm6E3O8=;
 b=ITbLlFMOAT+bXhJw/60tCqb0g9Urbx+nAnTPJbcEJ+E9m/6Jg5tuVyurRg3yeqXPdOzIM032JI11hlqDzmOb6OYibcQGfheAcazp2A12sEAzMFcoy1P4l8/eH0rTnMkoehF6SczftwvejCuRIYXQN1vT9PsHOHqdZcuoTrPJETY=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by BL0PR11MB3506.namprd11.prod.outlook.com (2603:10b6:208:31::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.18; Tue, 2 Nov
 2021 23:04:52 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Tue, 2 Nov 2021
 23:04:52 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: rearm other interrupt cause
 register after enabling VFs
Thread-Index: AQHXd1mzBUoKBDLxdEeVlzKVJPlPzavxjVVA
Date: Tue, 2 Nov 2021 23:04:52 +0000
Message-ID: <MN2PR11MB42248B75C4E6B6C96482AEDE828B9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210712115425.214965-1-paul.greenwalt@intel.com>
In-Reply-To: <20210712115425.214965-1-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6f50df37-8e9f-40a1-a0d1-08d99e552dc1
x-ms-traffictypediagnostic: BL0PR11MB3506:
x-microsoft-antispam-prvs: <BL0PR11MB3506DB26B56596030D59980A828B9@BL0PR11MB3506.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:626;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a08rHiSzOYKU2WZXjsPB+IspqCKrzAkjVTqNiyEh5a0QmJ441RtQp2HDXqV6EWD0apwnlueSRLi4L6Oo7126J9jrxxK6QZZWQ/RlgnIzAEZQPcbfHsUvnU5O8Fks9IXYWG67FCxT7Wl42UY8s7Nds11h89NAScMCxEt+XC0y+LtFj7T9K+JVD0+saktSVf8z1VOAaP/uKiSJTIKJtLTCASDvYpinEoD4P8fVydoWLoecEblB8lrZvyknSRG0vm1jnw3bcgJU7UWyAkGLBjfcpf+H6uB8X0kVRVKVKVX0wjFIb/Hkrz6C23ubMU5cLlld0gk7TQb0pgHcH63O2gq7iRW8R24gtvqrZtd1Z964udMHKDd/biWE95onAVmXXo9K1Z/WxXDRjXOyXMZrq3SnbQCnvG9F53B2sKx/MnD7ApSM+XlG6Di7wM9psWYzbwrkfPfG1DeWzdIWU027MQriBQi1qz/W+AWBo8RqVoqmKV/PRc0NAuNS3R5UfqOJUGiXVdodIutolUKk3kwvBY+/JMsmsTzWkte3QwZBwtlBA0sseLUoylbw/wH9iknlkEZv8qaLAhUZPbYfAOlcrhSDa67ww5KBikTYceSmUqE7cEoENjS4M17J7W8vN80B7ZDhxUFBaXqMi4qnSK4yEqWezhRBJt44KBDOpJy0PrtlWdNa0b3WjtuEmYR6TfrIpWHe2l2U9jEtdZITtBrkq15kXw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(508600001)(4744005)(8936002)(52536014)(76116006)(66476007)(66946007)(8676002)(186003)(6506007)(26005)(66446008)(86362001)(5660300002)(110136005)(82960400001)(122000001)(38070700005)(55016002)(66556008)(33656002)(9686003)(38100700002)(53546011)(7696005)(64756008)(2906002)(71200400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lC1oF31i3HQ4gmEopg7PI1UzEF29G/3gabC6drx+8pa17gP6z1lY2gLxqYwv?=
 =?us-ascii?Q?ECc7ipH23pWS0Vu9POFgXAAKrKJf2ZkuaMyTN3liwc/mRlRLav382NHpJnzs?=
 =?us-ascii?Q?/4aiWU2UsWQiWQgsuRcU3eVJymJdtQ2eCoC9Ehm5ZexrraGqiy/bdrcu1Y70?=
 =?us-ascii?Q?cMTRqjVdJCEVMxzBwe80WtQKFTAIoaOyH9MPTT6LQsIDYJW8O+N9VXqNgRpg?=
 =?us-ascii?Q?LnRiBY1KHHYmJVVIXh1rabQ9HQjdaP5y9pkv/Wa4oiTPi0PhLkoybgsVnHXn?=
 =?us-ascii?Q?0AJ7U3xutKIwkrpEfORxaO6+R4G0vf9T3Qu4Zpu4eYDrZpdbyXIT6pTe0VWr?=
 =?us-ascii?Q?7t8hjassMJN02WMj8eTATYSBswwaQFcU1MBKYaNnEafBFExAyp0dV9RqDzgD?=
 =?us-ascii?Q?FXUAwQqsdNGlgIp4xT+rSJsjTpgJmqoYrLkP6y4haqMzEQMSwopWLx8oPaaB?=
 =?us-ascii?Q?tXO1Upaf8J48oYUhrX3Eh5GMQ+oDm8M1QBiRyUJNRl8o5EBHq36r1yI65zQx?=
 =?us-ascii?Q?I1acWYoRl4oSEdUMsAJ9JDtkkiqnirguGqqs82UvD2tAFyfyiSIQXfqn4HNc?=
 =?us-ascii?Q?oqNVgiK8KFysvdrUc0EnbglzUxfMabs1/6QqvvGuDcwxuKlsExbAVWrPYFL2?=
 =?us-ascii?Q?9vlQ/nB3VMmV3Iw9YDByDaspVVdNFHxIPSTAkVrVBtRsjCjPYOKdkDQ7UsEa?=
 =?us-ascii?Q?mLhd6wjhtufk4+jc3ZhDL+hAg/9CPC2zErqvUxvo6p6WT3DKyZezAftu2/L/?=
 =?us-ascii?Q?N/kE4+XDj5NNXWn4ywTKWDpdP24ilqPU9W/TpmcWHqWN1ctgtWiTlIoRnifQ?=
 =?us-ascii?Q?E4M5imx/U0Qy1AWNxk8Ou1KEUFPjg3GpfJGSIqhYrIvbfO//Omgd7cJFmquE?=
 =?us-ascii?Q?AqvELtOY8Knszc7n0OUq99bhtQducqKA28uOy0wk25MkwBJ8oAfszC5wKPd/?=
 =?us-ascii?Q?WU9go+4aTUrbqGLjGEdsmHevX1zJAHqq3mYSIz9Nn0gt/3O5/Tpk44BaVl1i?=
 =?us-ascii?Q?zMZ9k7AF9FotJsLEREjCWucNo3Y4yFVvQ/pCYxVtnWcn3W7D9iwdntnpyvLW?=
 =?us-ascii?Q?C/YNEVhSbpGMy0CMZFCCRdiQP1UcvoDbwRmx/sV3U7+jxHk91tXAPSz6N2dF?=
 =?us-ascii?Q?XzhTYOvkOUVRAGOJhzUDz3W/BQQzFhJQPm4KW0pvixxRi9ekcqaez1BiCrRo?=
 =?us-ascii?Q?jEcg6kisX5sHrz9a5qmqt7XBgTopU9dcXD/xEZy73+o4r0hh+vpstcGiQfHy?=
 =?us-ascii?Q?NN8TzLrwA2NVgroYV6JX0OaN8ZoWc7j7+DjYqtEz8Wjnux18LT7/SAdwmeW0?=
 =?us-ascii?Q?XOXwtfaeNcMD48xziQkXcN4m6AeEks/SpFzzjcbZEbGVO2biOguP8LS+ZPcN?=
 =?us-ascii?Q?u+B6/5EkNGVUzofLF9r2DunFv3zpEG+FY4Di0qYWxaHkqI7ydRbCkzzB4cow?=
 =?us-ascii?Q?N6M/Z9ejZqH+yoM/U2iKhF8pgi2Ic5YsYo3qMGE5J7f+BVmxRtWfHQW8qUpC?=
 =?us-ascii?Q?fsmhFFgRet3OL3NSAOCy88cz9DFUT3r4qlFKcrpYELjVHVB7aw32u+7ZhFHV?=
 =?us-ascii?Q?kdtq4freSQ25EjbA3ftP9x7yyocqrtYICGENXLGJ345wdyzpaQYh6QR01j6d?=
 =?us-ascii?Q?vKpkWtBIdRa1G6Ena7RFy552QKQ2Hynln2GJVlTaTlvMy3sflK7gWHSYMnW2?=
 =?us-ascii?Q?WQXcmw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f50df37-8e9f-40a1-a0d1-08d99e552dc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 23:04:52.5669 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZH2icLoY2YZ2LRVN0vIAVqdGhZN23aHkAUyoLs2nlJih6FOk3Oe+KhZEW6nFPAJCy+HxfDmm7TQ1TkD/bNJ5FIBpbO1S+zQOSJmMfCRuTpg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3506
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ice: rearm other interrupt cause
 register after enabling VFs
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
> Greenwalt, Paul
> Sent: Monday, July 12, 2021 4:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH] ice: rearm other interrupt cause register
> after enabling VFs
> 
> The other interrupt cause register (OICR), global interrupt 0, is disabled when
> enabling VFs to prevent handling VFLR. If the OICR is not rearmed then the
> VF cannot communicate with the PF.
> 
> Rearm the OICR after enabling VFs.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 4 ++++
>  1 file changed, 4 insertions(+)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
