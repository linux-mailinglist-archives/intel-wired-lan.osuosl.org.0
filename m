Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3B34C4A9E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 17:24:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B63F832BF;
	Fri, 25 Feb 2022 16:24:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZC_1h7vLQUYu; Fri, 25 Feb 2022 16:24:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 729ED832E7;
	Fri, 25 Feb 2022 16:24:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4DEDA1BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:24:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B00D415FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:24:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gCSd1I3insgp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 16:24:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 899FF409E6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645806259; x=1677342259;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bUbWKQUtxVjTXHyqOXs+Pnp+Qa63t8laiMfbd1SCVrE=;
 b=kxDV4QRQYKh+maplfXwfpwZvIDP46hBiVFuNjl0Nq13lQHnSUGCqiImy
 AP0Kh3ByNY7e/BHknB5jV3c0kmsTmhoeiIuVGvXQs/JikJY9CtAoycHvF
 weO79113oT+TY6z5L9Kz9RF7SJIGGkAu9+o22Ry+8IwFTztwC0k1vHsIE
 6r0B0TKeTm/qXKueOeKK99C6LVCbTO5EMEHINQdQlhzwBXsIvIPjFjfmR
 46wW34wbBR8zlZuF3cFS6Z9WM0NubosJawWvAN+Uu2FGicBxGMrhR2vQY
 YpqF9hW+BOr+IcLqSTJgL0Y6xnZfJRvWqY3/s7Rn7GcLZ9pRZFpVoaqYt g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="252447588"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="252447588"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:24:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="707911305"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga005.jf.intel.com with ESMTP; 25 Feb 2022 08:24:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:24:18 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 08:24:18 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 08:24:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AgEuytWYfZlG69USu0Yqj24ijdRtV5E2TZjlg19gnK6Sue96SGxFIf4dbc+ph4Ce4x/d0bUBMI01aTffB4lGAMnJRGlNhcU5S2VGlFI8FKYDPPeUWKdzDtgmgPagEGefjyMhP3oOqTeS0xS00UYvfSjPNvguxqHknaAEehYcooxxgDbJaEifGsAPWFaUSRsKQ6tVQbUhx62q7jT5ymE+4+0Re0lZ+d36BnD9mqGLaGXoK80NN2PItohhRBGuwsZsMTeu4sIoxCmNYOhWs6PrRC0tMjiR89Fr+BddcopkQKrPLkktl0r6mbO4SJ4NS9vntV0H5b1c2Cmhl+KJwgVkcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hBV4wFeMGSODaZQ2Dssq7kGvcbpfLdo1adsy8VaTBOU=;
 b=QOaUNtarQaZzgcVRAPeojB9aICCYCM6Adzy6C699VwMhxcXPS/L5TmGhrd65gEuThvgSDDA83zCfI8tzBWM7kDBsYDW8pS7SCjxwVyt/8uMUVjKHyf0plMu/5E/45e0DGizY0ODAunbX3RAjFiOG5h19ROxpIokfX1iOKbZMVbey1N7k6uEAFpPyCajn94BAkFxhxqm8BTf6UeYw23vy5uWG3i1/UNuWKM69uYgK65TDMeUV/C/rM3BSpalsgKBR5zHHW9kdF2qwUVCyykbmstx2OWdWudUBAhW+G15FQ11+dNTeRVEvg3fXuV9DXSjLiLSeV4Rl8sMXb3thUx4ECA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BL1PR11MB6027.namprd11.prod.outlook.com (2603:10b6:208:392::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Fri, 25 Feb
 2022 16:24:16 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 16:24:16 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v2 09/11] ice: factor VF
 variables to separate structure
Thread-Index: AQHYI32TuDKVJbosuEu8Cxqa1nUiYqykgTUQ
Date: Fri, 25 Feb 2022 16:24:16 +0000
Message-ID: <SJ0PR11MB5629895FDF57927F13EF14B7AB3E9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220216213738.3826664-1-jacob.e.keller@intel.com>
 <20220216213738.3826664-10-jacob.e.keller@intel.com>
In-Reply-To: <20220216213738.3826664-10-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: f1c6bf09-c5b6-4c22-4f43-08d9f87b4498
x-ms-traffictypediagnostic: BL1PR11MB6027:EE_
x-microsoft-antispam-prvs: <BL1PR11MB602799F87E8DBD8873950603AB3E9@BL1PR11MB6027.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KhJZhk17eIK1z5ocGiCyeoiJLptMUaquHhO4CbBySNQXNlTM9rT9hoClaF0DfFpyCMJCbBz82XuLqhDIQzuOJa6J4v5IQ3DhrTZB0sNFGtMK6sqv8sbiCXsKqNQ59WqugkUSMr/y0dyOsoVwp6BGfvlS0C8nzIj79KCIbgy4rHCPOX4VNNsPYTsfwh7KLGInWs78ys37GC35P99fUthBihEngDjoCSKsWuSk6D11XiuJhFLpjDI+yw9yhb1SyqDVJZDdazNkds4FobHVMZJeDX/10BC9yM0pBnOWJSSq+21HjczMCUn3CY7hlxeyjNXqAMxtoGmVKMQmRFXF2c7/7ErrwhqPcsji/AceZfs6q8C4jsU7zwhVe16U8TsLufvMK3Vkd0IXhsSj6vRSuQdsTaRLCUwcUG/7pbEFOK+Jw13ATBl+M2fIkjb+SUCR3HUIDvxXKC6U64wS3GpbSekVRQp1WbXpHkgaxx/e2cJgHrXqYacRd29XEnvk2ExFDSf6k2zwLXSyZpX5X5TdHHa8NiILGfFvlSZNAc3rZhqZhrG9e6Sh2lXthn/XHLjGDvQJzmC+/IB2toW8siqYZgHgX7Ddfx6Vg8xM2rEc1fCMUwhYhr5LFAKU0ZRTql60F6epr1smuSnbvtDcUEW/3acNX0yB4+gtxDG//vlg7vJ/jDySJdLM+nmB8UsEy9ygofjdjtj0ZAkMqsG15HFlrF7K2A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8676002)(33656002)(316002)(83380400001)(8936002)(110136005)(66476007)(7696005)(6506007)(26005)(53546011)(38100700002)(2906002)(66556008)(66946007)(55016003)(186003)(66446008)(64756008)(76116006)(52536014)(5660300002)(86362001)(9686003)(508600001)(38070700005)(82960400001)(71200400001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Bt4NmBSKu2artNvAEfasN/TuEWgOk6x2+SFWwttVBcnI/bhe/sremurkGz6S?=
 =?us-ascii?Q?OtsVYMUVQUQWfmdVKJzHfuPFCnP++M+NwF5KuyPhSHYzbbaILoBfPu2yUn7j?=
 =?us-ascii?Q?2SXOToThTOqvIOEzNrqzmVyXRmnnFZApFmY+hgHRMsUUlueJqKqntP8owFHg?=
 =?us-ascii?Q?H07+tMnKVN0YD4M4F8FWMgVmEf8HNW+ZnmwgZkza9ibAibFs8FLWWEUpO7Sn?=
 =?us-ascii?Q?/QHrc1XcV3pxS48wsY7PSOFJbDecVg/GZyDisaYT0utX+KOSRBAto8vsxmby?=
 =?us-ascii?Q?5/yDcR11QcYtYt4yeOL04ziMukO0InQHFCn3wGXE9Qax6SpON9zBs4PR9nPH?=
 =?us-ascii?Q?eGhrMw22dQl21PQXerjEWxESdNeTUOqVIKkczQCNLuDnkvoucqCwqDK7HFvE?=
 =?us-ascii?Q?HOxtWRUU6a+GXy2po2aqKMTWjIeFsNO9CadlQ5v7TDOOcLXizHCfuhikIUsB?=
 =?us-ascii?Q?DQDcKkTPolN7r9P6DmoxE7RhGHUmjw4bjhCDbM9eQ001oKQvPMIIWlCeR2LL?=
 =?us-ascii?Q?ILQkbArStWIcWkPH+bGpyoQmWcJxV3Z5o3Y+V4ax74pqBL0Xjcp2wXpvX5nL?=
 =?us-ascii?Q?1VEuNHLxgqXsLZOmF+tXHivkSJQPCl/QMVQjfMEf/Z9gALoZoyaYsVS7ops+?=
 =?us-ascii?Q?/4i6od7jFxhylGta9bGNWs1w63gLEd1Qv5R33nyncKVrBiBoZvac64nLOxcb?=
 =?us-ascii?Q?L+gIK1ACsZmXJm2cPCGhhfMiL3aewND27qpPG/3WDagvK6Ghi2oW2d9PZ7hs?=
 =?us-ascii?Q?tmUzWAb4oYLVNVvrzZKT/Uvgh7lQ2cN21SyZ14x43W4S8qq3fAUQT3nsJnYG?=
 =?us-ascii?Q?PgDJQs34vrawl0tAurnQAG/nM7kIgpIeOEp8HT6yA4oK2azJol5IFtlEZwAN?=
 =?us-ascii?Q?gtajBio1lD0AW+4NV5F4yJ14RkFTDDltj94TFgCHRswOP3Vr9Zjpt7BmNdli?=
 =?us-ascii?Q?/i4rSWeAKnFXNxb7KnbOzpdyYZ13cGxjY15OUEg+si0MqjGChDTlP/bTilTf?=
 =?us-ascii?Q?g3iyD6vkSf22sKyfA0gHvDE4jWJBUz/Sa6SCUbejjIpEm2IvnAcgYI7Uvvsh?=
 =?us-ascii?Q?dRsJuJRr31NgiRdvrhO43UpSG9/9GOo4MxvAJAzT41tsAlLgL9h4RUAjDwmv?=
 =?us-ascii?Q?pmHdTvtjySWwaRvyzHadbV2v70hpYL45TzjR6EIPryvXCv006rLYIaBcRR2i?=
 =?us-ascii?Q?yhhvyavRaPI8X8d1pTVDmm+kHbnyI8XQerXB879VEWYKnyWcsF169qH5K9m+?=
 =?us-ascii?Q?AM0Us7SIb4hAEhrbVqEsNmpEjszTUYZAWrg6hfMezT4qlWnZc0EV5NIYW7cK?=
 =?us-ascii?Q?yMGn0IDjg+XS1I2crOYet+qM829R98EEaQYx8kvye8ZEcdZj92K2Hz1hc91j?=
 =?us-ascii?Q?ofWKU8RGLTfP2kAJYDo5TCQ0gen9lEvPprPKlc9fp52j0VS20lRhbB7DntZE?=
 =?us-ascii?Q?BWrAqkgH67Tein167/cC0we530Tbnc0Pi1Lux2Zn1r6JBd7KTcjAweVguxNm?=
 =?us-ascii?Q?PeXwmTLWeGTT30eurGyN50567e7ASRM07P+BAOAfUS8wAKd5K87UL6+E4Hym?=
 =?us-ascii?Q?S2AZFuCxkVS3AfcYtw9IYYQLEiYCTJKnLcknw1G42Rwy0KVxfi0RRLr6ADG5?=
 =?us-ascii?Q?EQUu4I61XRJjYYhyNe61bJwtR6kx3Kp3pEJB2H7G7kKnPdRRK5zaRlOj16ii?=
 =?us-ascii?Q?oGhHqw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1c6bf09-c5b6-4c22-4f43-08d9f87b4498
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 16:24:16.4353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vv3rsKoQAfRnoUwF+YT8M+Qmb3wSdFOSI/FSjLaflveaz9n/NiNAEwBG4p5tgRDHDvwaWTRVHxtEzg60DoBudY41IYtQe6Kzo853PTGZFhU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6027
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 09/11] ice: factor VF
 variables to separate structure
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
> Sent: Wednesday, February 16, 2022 10:38 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH v2 09/11] ice: factor VF variables
> to separate structure
> 
> We maintain a number of values for VFs within the ice_pf structure. This
> includes the VF table, the number of allocated VFs, the maximum number of
> supported SR-IOV VFs, the number of queue pairs per VF, the number of
> MSI-X vectors per VF, and a bitmap of the VFs with detected MDD events.
> 
> We're about to add a few more variables to this list. Clean this up first by
> extracting these members out into a new ice_vfs structure defined in
> ice_virtchnl_pf.h
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          | 10 +-
>  drivers/net/ethernet/intel/ice/ice_eswitch.c  | 20 +++-
> drivers/net/ethernet/intel/ice/ice_ethtool.c  |  2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  8 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  2 +-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 94 ++++++++++---------
> .../net/ethernet/intel/ice/ice_virtchnl_pf.h  | 15 ++-
>  7 files changed, 83 insertions(+), 68 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index 9041b4428af0..571396eac77c 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -543,15 +543,7 @@ struct ice_pf {

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
