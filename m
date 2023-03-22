Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC116C457A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 09:58:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E5646134B;
	Wed, 22 Mar 2023 08:58:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E5646134B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679475499;
	bh=XVksnqLqxZ3Q7QscJkZhxIjio2RFis3UbOIAJO5ltbg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=h+B1xtOROkTWoLKWR3ZK/L2AuzDgvDtAypMQPDolHXkpxik49QXG+GnrZ4iNkveFk
	 GdtW5+nQST+Gs80jq6hoYrwpaUtgzNu1YO8EsGrSSL/tLW0Nz29Mf1gLhlka9v4Nns
	 9due6tFcWOUslXtdzW/6M36BnCE+ppbc55nFppzKo3WcG8mpBVPSPa7fkao7ZuR34+
	 36G+zRsZUDmBBHkOFlQslvXU3QRSFThKrgFW0J4YWq8mn2cD0kV1lM/chrpJLDubrE
	 bFu0dPIUOmQRW+Jkq6o0YJ0B741P/U8qfrCc71YfvLgLKrGCWyRlrwhumTiNFoRhCT
	 kcpL4NzqADHqA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C30qj9LBd4fy; Wed, 22 Mar 2023 08:58:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98F7A60E96;
	Wed, 22 Mar 2023 08:58:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98F7A60E96
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5749F1BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 08:58:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E6FA813B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 08:58:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E6FA813B3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KJaab6pnALJY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 08:58:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35AD98135A
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 35AD98135A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 08:58:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="323002667"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="323002667"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 01:58:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="805743878"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="805743878"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 22 Mar 2023 01:58:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 22 Mar 2023 01:58:09 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 22 Mar 2023 01:58:09 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 22 Mar 2023 01:58:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n2PwB3GOmZGs4jxsitbiUqdYcg+tKHGzQ9EhbotC6OJhHmuTRzucCWDyaNfsRC1tkadS0mPqSgTJwiw83vL9Y6uQxkrzebTje4IPzw6yoWCrYGudURL0VlYGchBwC0WX4qNX6iB/zifJ5IkQg4lIrYAKtT/TnnSrzPLG5AU/2oKtqnYlU9L6GtViV5PNaSieeFjla/THEpu+m+mGbrowLK1HmVZfnVjcZwZEIqwqaMecJiOD2t6v6Kz32qfFlzExjeJ8UojYMuPuV2ZUx+IufayRh4OOI3srVpmHp2L7WBi12VGqXYfFMhT2t7U6M9N+vnRw+EuvYoyRNr6RIVPAfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yx0NDct21qMXUb88WxqQTX30RL9k1HQod2Ghh0BS2xA=;
 b=Li24qRxRMsUrf0Rx08wBnKzt9BldSgrFSX4wig4jpfpWTLj1L2Vhj3lQmjVxOzO93BBkmOwM0NDBTqQwrHmVl+dZVfsuH6E/2QvZZgjNK3R9GOQtqFd+l/NK6ulOD+3oxfLOvLolYqvHft+t7kqIjbyAF9kGtaJFrMvLkm2Qw0NlZ030K7YzVkebuZrB6bKQBhG9fbThZW+ESDBdnzvb0odUwYhWBwI32bm17RqvJj8niMUDoLnuV4erLDe95C1TQ8VYEHM4YfnpWt6kbBVLNVHsgtvEsyDcSgU3vrZFtKYd60+IRhhqYSIdbhDsmORMlvdssKt32auRdkG40foFSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25)
 by BL3PR11MB5697.namprd11.prod.outlook.com (2603:10b6:208:33c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Wed, 22 Mar
 2023 08:58:07 +0000
Received: from DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::b060:3d57:bbe5:baa8]) by DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::b060:3d57:bbe5:baa8%4]) with mapi id 15.20.6178.037; Wed, 22 Mar 2023
 08:58:07 +0000
From: "Guo, Junfeng" <junfeng.guo@intel.com>
To: "Romanowski, Rafal" <rafal.romanowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] ice: add profile conflict check
 for AVF FDIR
Thread-Index: AQHZVhkqW9e9BCoRvEmUGtY8O1/0LK8Gi4uAgAAAnHA=
Date: Wed, 22 Mar 2023 08:58:07 +0000
Message-ID: <DM6PR11MB3723E7CF2A38FB785680355DE7869@DM6PR11MB3723.namprd11.prod.outlook.com>
References: <20230314020315.4190488-1-junfeng.guo@intel.com>
 <BL0PR11MB3521A6DB063291EB798DF8238F869@BL0PR11MB3521.namprd11.prod.outlook.com>
In-Reply-To: <BL0PR11MB3521A6DB063291EB798DF8238F869@BL0PR11MB3521.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3723:EE_|BL3PR11MB5697:EE_
x-ms-office365-filtering-correlation-id: c34e7bdf-0f4e-42f5-bfc9-08db2ab38e40
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HyS6hyyy4slhZZW5OU5zCA0te2v/QId59LXjZwBQm03MpCU89Kj1etjKPtNpOYE6E72F8rRmbE2NrR4KDoxtu5JjkiKQx4esxvGX640BQP8hHFqnXz+1VKz6afos1M6TybKPJ3N5UfgzKkEouumqqGfr3TZJDr7OXibvi6wgujLPqnLlRhXrSak4t+Xhp9MJg76zIhrGYlqHLx10+GH2XsxtOgxaOWrWTjsde6TpKEwVqlblB03gBDHjwUo1v0Q3S4YZ++Ikqk9prq7rz19wgH9H9CV7q+a/OzIhxdmnKwJcbmeEMRZ/POqsGz1HvyImcNV/Iwb8dgL4JjNbK+fY9m6vfXhtc57NXi5VsMvBhjasGq6duavoZEHHHCHwgaN+nOkBHksg0u8jY7z/5WOGLmWnrIeIqRnhaynApdPnXq9Qkdxn3sAcpeIfXKgBiJH6ftHPGX+b51QHfukszXtIaONZHR2pl7/TBY+FUopDaovX4TAZsB2onFUGCN1k5LqIzBuZqKMO2gCZzBqsQpFhSmmxA7aRIhVNEINUi2ST/Omzmzsiaq8UBQNNVUiblvbPbwtCuEzvz2GyzTgLVKd1k8wePcRhH6eu0mbo9/6UC+TQ2JgF1wJaCshX1dG5CXu1y7EIB27Xqc/BfZrTiQRqjNni9o1qLDgiSRvoitJ9FgltuYzQRhkeOjEfp2FKcFs2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3723.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(346002)(366004)(396003)(39860400002)(451199018)(186003)(9686003)(7696005)(966005)(478600001)(26005)(6506007)(83380400001)(71200400001)(8676002)(53546011)(110136005)(316002)(66556008)(66446008)(66476007)(64756008)(66946007)(76116006)(52536014)(8936002)(5660300002)(41300700001)(122000001)(82960400001)(2906002)(38100700002)(55016003)(86362001)(33656002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lud8dyDuIw0uwCPTbdObnsYltz1mGDBHJ02aePgybQPLYqwfzte2F9TQwbsN?=
 =?us-ascii?Q?3bIouC93Y1EC2gtZmk1YXzKrHLq+lZCcE0loJLu/1XL8wqfzKJ/GnlFhauXN?=
 =?us-ascii?Q?cQMaU5fGO1cRPedpykRVwyYDYchDKABrZba4PNMo+kANtmoGiLZ4VgeztYsP?=
 =?us-ascii?Q?eP8KNbuz1I5ZfvC7moIgwpNHuvdBlh6VwATgc1xUCCFhhvjHlj5Xr1QPCbVQ?=
 =?us-ascii?Q?1jU1+dpTJKNCfn3NKlRWpp6ZxMUR7BNgqgq0rN5W0u3V/qaEqwkavk7BJd7a?=
 =?us-ascii?Q?qYohTqaXbE3cX+5MNNhuOeZtnStdK0f5pOLfZ4adOUlOIGobtQHwkwW3uhoO?=
 =?us-ascii?Q?Qy855z2wNXNrfUoVPCJMb27r8k+vLaqjpmFX1oY1EKS4CBxdAm+JtnpJHNFN?=
 =?us-ascii?Q?VQNV4L6BElLf4cSF01x6WpfZA0OWanYA8YwKg8I0vXXfcDIWk/XEAeMLpnXu?=
 =?us-ascii?Q?PetRUQi4MfaQ3b9nycoUxPIWBgrjXw8L1Uqxt9GT2Ji4wWjUxyAkF7wlBZTy?=
 =?us-ascii?Q?nWfkMPk3QYLOwkNg3822XThBTyelMQRRwGXJOXJEfuE02QhleGPn4Kx/wjnL?=
 =?us-ascii?Q?cxcUT47tS3iZYDgcV3fyblLGgdnUjsxzhw3HOSk1Yst6HPf0djtEBnClEdbh?=
 =?us-ascii?Q?xtKZLOEYmN7LtNBW4Z/uyeTfW9KikHIVkph9jp2++tSqhuWY91ed0mMj/9ze?=
 =?us-ascii?Q?ioo91tFyHc0FxYg0DtI4Ps4MlOUK7AyXKKOEpS3tXn+MHUpfF29uOMWfUmSf?=
 =?us-ascii?Q?UwmOlI1krrftDgYMP5puklludijdb7UU1WdgUErqB5KLMovNkXB+neSw/4h9?=
 =?us-ascii?Q?iLac2KdGwkSztC2XbdNv9DLeIA2//mAtpBTfK4zjvBSb0TezPK7p2Lvo5WzY?=
 =?us-ascii?Q?hMiebS4O4RSc60/rU892Zv141FHIxxu6G35O6PK+kTCO6/T/YJkryE/jilfD?=
 =?us-ascii?Q?/zpF1m+KrOUXQ6O4GOtPJaTga52yd9VWlCdIbCAPAd4Pwm5KSHPVT1Ctl2Oe?=
 =?us-ascii?Q?7LAATUwVkFBxqrLuUE1GuKJ9Q7n6ABU1Wo0OIJsbba01+OWGCa38jA/9dFFP?=
 =?us-ascii?Q?miI3yUttlKYd6G2PyTpRLFJIAwBtAryTTzpytQg+vYzlBzWiSfclc7kQHSgf?=
 =?us-ascii?Q?Tw0x1dDgP5SmUf0/HkqR0KiiI88nN51hdYObe4u5sXURAVDBtOtoke7YQl2r?=
 =?us-ascii?Q?VbERsic4moZywW4n4qpFFPyYtBQ/Ws6wUd1XSIPw05f07RIkOBcr2JfHUErV?=
 =?us-ascii?Q?/OfwSKUx+IeE8Ts2Kj98pFs1EQZPeODYCeeQpOEyVavePmy6V7OX/RdLnFuy?=
 =?us-ascii?Q?PvON38e3gcFeO2kdRPsJoyYCmdBk8VZ5hThbEdxrFmWck52kOtqAyLnuquta?=
 =?us-ascii?Q?ryFZlKn/fw1EKP7/3IUjO1P+G6e3Gy72IAF8jsSsS+4Cmv+KuvYTusLtgHIt?=
 =?us-ascii?Q?M6AnnheIdjIi9Vbv5OMN9FuBlxtzP6zKZumWSNExVS+rYIE3OpPtDUG76gXb?=
 =?us-ascii?Q?mTAl9oYeHS1RvMJVhc4xNJ6o/0wedLzPlJI2Amg0BQfD5c6QVXi1TE9N8V7u?=
 =?us-ascii?Q?NrccaPf1Hhn0z6L2VvPwSFuHgi5PcjO0AWQNDIyC?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3723.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c34e7bdf-0f4e-42f5-bfc9-08db2ab38e40
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2023 08:58:07.6552 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0/o+hIHU4kDP0uT4ADcZ6xaGmgx9zLXfLh4r7NGmlnEww5ye64E2jqwi6JE68kEAwf41v/J2SQWfBWTfHG/t6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5697
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679475493; x=1711011493;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=iWvoEIYHFdy9AvnOj90zh+WACImhVAxsoKtAb+95F6E=;
 b=DBu5ZbxaMotJHdlEpTqn7ViGsAGT9z5DVsHnDqbEiQfGrBLCCdxQu0e1
 BRKqoJY1KwY5YpQZKN1TiuOzsI8vBNY013LON89wWt2C+eYrmjk0u8qKB
 VJCWRc2Bk7JxAoIk9XnoT7oe1cBMojk6t88rZUTGm57p6DUTIzssVz4fb
 moxqqbrkg+6PI+6Rni0u/JdEELlqv0l2DCvF4C6xPqEhGt+IBJJulHrEF
 5Ud4GbICQEIXEoAfM8lNKnsm/IMSSWZMVeQlKxn6zZCwTk0vK+bU2HcYy
 I0o3txRsSvBuFxA5gbLKX3zupnJyXvh42zB3o/7mNMqBOpbrN5OEIE9Bq
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DBu5Zbxa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: add profile conflict
 check for AVF FDIR
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

Thank you Rafal for your efforts!

Regards,
Junfeng

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Romanowski, Rafal
> Sent: Wednesday, March 22, 2023 16:54
> To: intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: add profile conflict
> check for AVF FDIR
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of
> > Junfeng Guo
> > Sent: wtorek, 14 marca 2023 03:03
> > To: intel-wired-lan@lists.osuosl.org
> > Subject: [Intel-wired-lan] [PATCH net v3] ice: add profile conflict check
> for
> > AVF FDIR
> >
> > Add profile conflict check while adding some FDIR rules to aviod
> unexpected
> > flow behavior, rules may have conflict including:
> >         IPv4 <---> {IPv4_UDP, IPv4_TCP, IPv4_SCTP}
> >         IPv6 <---> {IPv6_UDP, IPv6_TCP, IPv6_SCTP}
> >
> > For example, when we create an FDIR rule for IPv4, this rule will work
> on
> > packets including IPv4, IPv4_UDP, IPv4_TCP and IPv4_SCTP. But if we
> then
> > create an FDIR rule for IPv4_UDP and then destroy it, the first FDIR rule
> for
> > IPv4 cannot work on pkt IPv4_UDP then.
> >
> > To prevent this unexpected behavior, we add restriction in software
> when
> > creating FDIR rules by adding necessary profile conflict check.
> >
> > Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
> > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> > ---
> >  .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 73 +++++++++++++++++++
> >  1 file changed, 73 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > index e6ef6b303222..5fd75e75772e 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> 
> 
> Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
> 
> 
> 
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
