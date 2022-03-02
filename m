Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 501A24CAF2E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 20:56:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE9B760F26;
	Wed,  2 Mar 2022 19:56:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MIdQ2iAaJGea; Wed,  2 Mar 2022 19:56:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC10360BF7;
	Wed,  2 Mar 2022 19:56:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 307FA1BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:56:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2B8D160F1E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:56:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Cy9OkcC4mcT for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 19:56:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8FDCC60D58
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646250991; x=1677786991;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JKPRQ6XPxYmrbowwGTRT5A+4H4IO8+sL9LdEJgEcrAY=;
 b=YKgfhX5DQmEZYMuCyA+AcVfpskQy0F5HGMJOgEaaUQVDxjxssbAm4Qfj
 FmnSfyWL/z8sist30/1/9M2tgsf+tjEhj6kwzIyMnYWayuT/1xj7g6Uon
 cOZIHqfgKFvNQ81bQw4SWT8WMp8ZePVNv02ddzmamz/Ye0P9hIzDID0m4
 rckzAIAmqyNFPwJteOrvJljQCmRa84iWtQl8SgBNGPyC+q5fqLnTNWJoL
 +Dcx0XVh+OsRBon0J1IJX6BJur4ITxtxYDRlkEFShKrRThk6/JPUDLyzY
 KabnsIG+RGRvV78iu50h8mHr/aO/mBjf4QT4Icq49vliCfvHbNVbTZIhn w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="240909490"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="240909490"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 11:56:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="551413300"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 02 Mar 2022 11:56:30 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 11:56:30 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 11:56:30 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Mar 2022 11:56:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oG36QQ+sroZv4UutLvNSzEpEdhSYPYp6daLx6JgY902Hq1xeotNKzTE8gFjAqIoqYA0LGJBF4BsxM+St2Zv5yfJUjKmuplIWFTKNg2JEIX6/lI5nQD6D+chcR5uUVxQAELDmRL8zzZb8nUDr26SD7wQhXoH6xXnC+Ip+moM7p6DBh/MfJAGfOZ+ZbM483O7LlWIm4dU5f6mBYiDMsrWWrZ6xfheAvKTr4chXcdzpHx6FAiZmBFUOqPKu/ssYTI5B4k9dwqya3K9Iox83T3GCbGQkonsxQIEo/wWDQWJs4w0yD2/DfNzF2dWZ2f8E7fwoxSOff+UjBuG0KluhtIyBcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9WGa+ubsPlv73ZQfA1Kv4oDOo+Dx27hee2qNtYRLqgc=;
 b=DbOf5odst6kn+AWP3EtKs6/j9JZKvqzfY/xFbL7KMTmToMCf6sFGW7xCytkoOSGqWHkfrZM0lMSXZc/pEE3zq53xlF/OmEdwZfR1EZprPWp3xZiI9WH3v1qRaKThapKdF5UHQplfLtcNtpEgHx8yvxjSjD9erVHEWq5IyLxeNZjb9ED+vlub5F0MCpev7VQdNrdsu0rDlU9Mtms10yDJk2uQWh75N4UGl1oK5CzkZ50Yf8Qxc1lIGKzvSLucqU26Jh8jxmLxuBC60dxdOUU5W3W23RYl/c8lQvsotlIgyxVmcUZSdlWsa+La5sbEPoopL0fy5c5o1YK0W4AY4yuyhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BN6PR1101MB2275.namprd11.prod.outlook.com (2603:10b6:405:54::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 2 Mar
 2022 19:56:28 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 19:56:27 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 16/25] ice: move reset
 functionality into ice_vf_lib.c
Thread-Index: AQHYKExaz4Q9mTF/gE+PDx6B7DreiaysjoQQ
Date: Wed, 2 Mar 2022 19:56:27 +0000
Message-ID: <SJ0PR11MB56299347D8DF754357E24C18AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-17-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-17-jacob.e.keller@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a0d8cb3-07d8-4245-fe54-08d9fc86bd2f
x-ms-traffictypediagnostic: BN6PR1101MB2275:EE_
x-microsoft-antispam-prvs: <BN6PR1101MB2275A93AAF947D0BFA337783AB039@BN6PR1101MB2275.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ICFnuQV2qDw9QI3aA+sj2P160O5oG25DWgzuQEzNW7bUhEwWEMZX6R7BRByatTW9McoUyG18ig44yIvfEgBLeOqRYQBLuNNPGa6t11m3VFOv6aGTmRPZz/8OVvDYf1huKYexLuVOmMxMzyC0xlFs/QE8SQxjv2dsh38AU8cqHhwPyN5G7bAgNPdaosBhJt1Lu/Bf6PL6dbNYrmcnYPtVnrdipvuQCzA8O2XrEEVPZFm3vyAq+iRzNJSgICXLPzbwr7ZwdxKRlRbNScR/g4Z4tVe6+PPiXUWjWzSenaU3OBNpu2c4RgTJzs9iHu9C+XnSgac5s4grz+df32vlaR4a8tzYdzHeB2bI7fjscwqtI8tVJdF1jtbJXbNP1kWaoKty+UKDt0SD8AU2hIyQ1ZKP+YGULcelkbqjPUGz2BapJu+qqrRKrismL5q7xRb4+kTfIrzAUt9zt2JANy3xa9jXDKm5Abvpz8YszOQVWxr9DsGpnoBElykQ5vAJpyUJ6DkhAzZfY8FAqOW5JtWGN/p54WdYXaJAp0GHito/7+fQiCp7f/XPzB4ukBe0awkZMqRq083NNvIl2TDJP1c8HNfqfJgX/a9cQR88J/Ls37Su7tBLYp0V+l8vDiMKvpU9N0ab4qKEFOXCORhMzp3Yn0meKwb/yqIWgfBiR9yzuyLqyav9ySEwyl9Uf9sHjtE1DlAUm0KtOELGnj5JCHODxVlVtw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8936002)(508600001)(52536014)(83380400001)(86362001)(71200400001)(55016003)(26005)(186003)(5660300002)(110136005)(316002)(66556008)(66946007)(64756008)(66476007)(66446008)(122000001)(38070700005)(8676002)(33656002)(38100700002)(53546011)(7696005)(6506007)(9686003)(82960400001)(2906002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Bq//C9G05omL/BHIIT9qkmVhVwPl01l2eTpkOPZ+Ay8QXemB/bFM2B4yJlMh?=
 =?us-ascii?Q?xDLoU2RwwxjNfXjr6jcHagR7HR+FjWDjOv/wa9Rr2Ud/+yPiJMlZ4jl0TJN7?=
 =?us-ascii?Q?IbgmdMyuACGKbNy+wfDPCaoHjKlrInTNh2zBiPSoEKH5t2kLb8C7KFUk19rT?=
 =?us-ascii?Q?NuPAqgQXfd02UppFAEWKUt0lUlcbHN7UMjtrkewmhx7Lr0vqNnU0F6sPGjAh?=
 =?us-ascii?Q?UuuYMhE/GNtSBY+PWX1vdEUOkoOgB8JjzBA8DDrGSoeKURqzMRzHcV8yQXH+?=
 =?us-ascii?Q?S4YlXfBVsouY9PnNK4HqqwoxJcjjBW3vu3YC8v9FJsrG/dPYrcd6LsJRGEoy?=
 =?us-ascii?Q?IF0uc9tKfUbCq0AA2pMVPm89mmssCM3UWbIUrFcgL5M8UG8fYQmM4cXT9lIL?=
 =?us-ascii?Q?+Dl3x17JI6fXtqjHJyFQJeu9U1/bDmrL1yd5mWgZD1kq4vcga8YZxtV8L9aA?=
 =?us-ascii?Q?AS4wRzfa565T814SFdhUVnL8dzkVDhz7KGG38dO1ZVfveYmZOknK1H5LR/MQ?=
 =?us-ascii?Q?2rN2QexrMXZc3FtJ96NZx8VY+BMdZHF6u34i/fa7QWTCmZNQQl9RX0Q9Wq+6?=
 =?us-ascii?Q?pMK+bZMlh2l1H35HkXMqrR9j2ippGJaT5TgW4d7PHSI71CYTxojefbj2HTtM?=
 =?us-ascii?Q?8i9E9YnWumtDeXwYrtOlzB1ASwWMkg+u5iVeiSEoSHhAJbQhW5qZNSV0xpt+?=
 =?us-ascii?Q?VQBE1jFq4Q5PEsmfrPledhYOgdi8hTE1uQF35thXdW4LPctDSmXYEdJySawH?=
 =?us-ascii?Q?pdikwgdfAg/f3QAEaROtYiMkpMbyT7c8syxleyaOxUhC2WZLbtqtg/FhEmm8?=
 =?us-ascii?Q?7oltLtdIkRwLnriYuEAwzpnDAh4Emh118GOOmGGYZlmQH8VxKrOeJsVixy2X?=
 =?us-ascii?Q?sPmvOSCQNySUrvHqCQQvx6RM4uZnVfjii2XkG1718J1VhUuMt4xfWxD+Msja?=
 =?us-ascii?Q?TmtC8Rlr57Gf+L6WKQvSq+Do43GXz8R7WT1jCZRIVB/Q+fbdDKVamlUqFACw?=
 =?us-ascii?Q?6NV8lhGM4wWmvCa12xnCa769CezlNJk35sYe0H6sy7QTAYb/e+7Qdnr+15ZF?=
 =?us-ascii?Q?MG7FoV34e8AopQDXOpvPBp4Ih27uQVHDfz8wS7C/yiC/NFjO5jMH4dUQkyGG?=
 =?us-ascii?Q?Q0LoCj9juil7CqYcWXcFDa1GX4lJbhsjPlIU8adoG91TMvcODDMeeWNbhBVN?=
 =?us-ascii?Q?/0qC7TbOsdX9lzaP1NOCcnsm3p+LQFEAL13pv4DBBgEzz3JoUcF/rnf0K12C?=
 =?us-ascii?Q?TdFXUCjF93NWEi6b15y9Aj56JgxLM6SZhQ0VbItI9hNtR3W5tkxG92/CbE6c?=
 =?us-ascii?Q?YX67AUC+RVwn0VW8OWUw72n7MYBpM46GM2gMIEcIxsnvRniosB8rk1pSR7Kb?=
 =?us-ascii?Q?4+YFlng/eKv/zQDap3jc4mu7e1dNdyg0jSXTUzgZ78gvjll7xpIMiSnxi8+1?=
 =?us-ascii?Q?20OLDhk2Wbmj8ebqFUJ6RALJmPk22W1NgJMoDxwIs95q1201/7mEIORbfU2B?=
 =?us-ascii?Q?pwoTk18UdMOUHDR5VJ5CIGLmWEQRT+6S/TaH5SqutOY645EJoWChRHqR0umC?=
 =?us-ascii?Q?TckJLrrTLXZFgL6OEbidUwzWfm+vwN9e+yUN2AXs4vgtIlfGT5BmFHCKkkaJ?=
 =?us-ascii?Q?bxvVKcMte8HP/OiGLo4hX63v1cMCoAFv3UIIYys621DeMTiv9jp7K4uVWguh?=
 =?us-ascii?Q?xfk+hg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a0d8cb3-07d8-4245-fe54-08d9fc86bd2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 19:56:27.8554 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y40i/QxbZYqY7NEqaP52bprVEqeezG4o477I2BfcvrqZiG+whtoTW9iZVMVrTIou/F8bl+ODnBYNUEdTrUQPryjtWiz7jDn8z99+sPrWw7k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2275
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 16/25] ice: move reset
 functionality into ice_vf_lib.c
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
> Jacob Keller
> Sent: Wednesday, February 23, 2022 1:27 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 16/25] ice: move reset
> functionality into ice_vf_lib.c
> 
> Now that the reset functions do not rely on Single Root specific behavior,
> move the ice_reset_vf, ice_reset_all_vfs, and ice_vf_rebuild_host_cfg
> functions and their dependent helper functions out of ice_sriov.c and into
> ice_vf_lib.c
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c    | 475 ------------------
>  drivers/net/ethernet/intel/ice/ice_sriov.h    |  15 -
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 475 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  12 +
>  .../ethernet/intel/ice/ice_vf_lib_private.h   |   1 +
>  5 files changed, 488 insertions(+), 490 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index b2376e3b746e..4a8cf8f646c8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -466,37 +466,6 @@ void ice_free_vfs(struct ice_pf *pf)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
