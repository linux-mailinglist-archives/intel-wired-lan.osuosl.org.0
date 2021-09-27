Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA482419D12
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Sep 2021 19:39:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38C6C80EA4;
	Mon, 27 Sep 2021 17:39:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V08VrS0RylBh; Mon, 27 Sep 2021 17:39:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FA3180DEE;
	Mon, 27 Sep 2021 17:39:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 606EB1BF5F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 17:39:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4ED6B6080A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 17:39:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TaqtsAuSiWOO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Sep 2021 17:39:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A6809606D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 17:39:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="204678475"
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="204678475"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 10:39:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="486224438"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga008.jf.intel.com with ESMTP; 27 Sep 2021 10:39:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 27 Sep 2021 10:39:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 27 Sep 2021 10:39:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 27 Sep 2021 10:39:14 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 27 Sep 2021 10:39:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K+gKPMz2y05oFxHz/VBVmwpgXdCc5PqTWpcINJY3Qp9nDHmPY12BSeFWgHq20ruHq6n5jTw6l1YDGAZNAJTD2iCOJxzNjfMpOBsBT2N60AKxdF5P4jfVmAGv9IstrQkAHnJtFJ1GveKI3Yb5/EA1SVYbxffF8UHsJDQPE/v1R4tQ2TDpe5koSiUjzmmyk30kK63uRDUl9EZnTMd2KWLec3dG909O5OmHC8c6Zati31pEKNS73r5XNNWEwS5i7D5Fxp6bTxRhtDDl4YNMzGv3meyC+itEBPoH1EYNHfh+LYkR1AmxyG6HFPjIMP2vMe6sl8hqL8EPhVt/mh1UaZANGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=HfE/m8toz/TR9P49qek1KMCz3Rb6PwMGys7kH4OHfK8=;
 b=YFWtfwAoaWUVsc5adR6Vra9dcFjReV+CdPY9Jj6xc2uBHpR8nfo1YqmIIv9tIE+rajcsb8mUyiywLwIweOxyLFe8F3+9XroBMUPkS073bVwmkB6SawAZ6RFg9suZTtuMrocL03kZoqrLkA21jT93YU1RF9j+SiaaGL3K43BJ26+mjSoYZ/5495+JGuL6zlTpNkaEMJbIxaaHtrp6ka3aexs0nxCTzhoaS7/P8d0qUQThM8W76SIJ9ce2YDNPZedJojqxU2CrznR2WJN9f4msqm9hB7Woccv/N3xdfPl6JP/RuolqCTsAG077d0lFlvQ85Oz90aL+xvSR0cxh8vucbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HfE/m8toz/TR9P49qek1KMCz3Rb6PwMGys7kH4OHfK8=;
 b=cVdsr1k+5tdKKEyLvJgEsadZAvXqs2xxH5Vm+PhtuJIMgAdWGcONrPPKBaEk53b6yQwZ0y5Y4BiCrAIwG1iaAxi2CiDNQ7LT7iP81yZZmnnYu5rWZpG/CrPDAkmx7VkYRxd40jD0UvFQJhyS5yRPaA+GAe2n6WMEb2SvLYtsW9U=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB5117.namprd11.prod.outlook.com (2603:10b6:a03:2d0::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13; Mon, 27 Sep
 2021 17:39:13 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2%3]) with mapi id 15.20.4544.021; Mon, 27 Sep 2021
 17:39:13 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next 3/4] ice: refactor
 ice_flash_pldm_image and combine with ice_devlink_flash_update
Thread-Index: AQHXpQxb7DqckDubM0yvckYaIh1V4qu4QptQ
Date: Mon, 27 Sep 2021 17:39:13 +0000
Message-ID: <BYAPR11MB3367CDDE15181F344B459434FCA79@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210908234924.3416592-1-jacob.e.keller@intel.com>
 <20210908234924.3416592-4-jacob.e.keller@intel.com>
In-Reply-To: <20210908234924.3416592-4-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ce4753f9-9f53-4d56-f636-08d981ddb887
x-ms-traffictypediagnostic: SJ0PR11MB5117:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB51174AE605D40A16552C7E3BFCA79@SJ0PR11MB5117.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BsJS/rZ2Z1ke2ScOeY/PDp7OCbg1qktWYHj5pUmsO4EVnyUBE0aGftTq6GDivDa5HN2Z/X4ESETYbOCoYx+Jrkfed/0jx02SsYj2nuVMPCP9wI0iDgpIVZscGz0zpvp7P1wiNmdI29VRagZoVYLsCn1BEjTUJ78ctCJLirT8WmR0wRESsJEPNwDB6Oca6cuA+qBDsc9dkeXI2rXlVAqxLe4WuVIxBehTgYOggSeykGPsBIBaj5SYgsaFplnCWI8LkneSaGvHgJ513l25s3q2NzPNp76IWxxKXUFq2KLGGezA3f6H3my/AD0kXBUmLxsrfyZkZL6LoXPQpY75ULLguGqMf6CK+fPakymcbCjICww/WVG8JMtzD1CNlFcHvrXR9lI9tOCfpk8BUCp1Z/09oQ7efv2JlzNtAl0fYrBABe+BreDSzLe3HGq//RG9FdeM+rdddBwruPyfzis3vv7Vb1l1kudVOH7ObLhAAT2VO4ZeaxNYKqDjJeLJQDTk8kNunYWbB1dmD9WRf3GNB37VBgWaxrzuGTcnHh5Q3U6285wz6E9PBkibCFUbnNjbQkfWj2xNG/NgT4lT6N/sqYHbg2E/c0/fGgq3IS3yDysCpMbroSDphSs/534ikRBY8G+1rHILxqIlza1CG4ppFZU831zd5CDgJAezFf1gMHA+qK7aWNtu0uaHecfBrRYdFqv5NFK7+EFNcrKdq1/rXSKPgQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(66946007)(316002)(508600001)(5660300002)(2906002)(33656002)(71200400001)(66446008)(66476007)(66556008)(64756008)(38070700005)(76116006)(8676002)(83380400001)(6506007)(38100700002)(122000001)(8936002)(86362001)(7696005)(55016002)(9686003)(53546011)(110136005)(186003)(26005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rthACAZvjZ/pGKXS5WD5oie/TtPUlBCJeQnEyRhXggfGWtcu2yy6TblOOY0d?=
 =?us-ascii?Q?FbPvrtEszAAcEoMIzVK4zYw3/qDLj5ZowSfrutiBt5OgVc9e2MDTymZMu7iR?=
 =?us-ascii?Q?CiJNOE4Do92jtZs353yLf0dXimpjcpsd5RBJbawEQ9LOMfB9YU3ZDgwTcSt7?=
 =?us-ascii?Q?8tUMHcmQPk2JEZ2dVUSZrA3cyOrPN/n+H4ukarGTn2k0IdnnqX1g8Mzl/yIq?=
 =?us-ascii?Q?CAA3Uf7H4UvDwJBt7ShHKqmIy6HtEuvNZzmWSZrKs8E0DUN5weoQ7ckeVJ62?=
 =?us-ascii?Q?p1DH7YV8j/XeSAOya+u6kqkIWp2f+ct8Bvu9zUpMMGujW2btc4GlFE1KYVH0?=
 =?us-ascii?Q?d/+X8wrAa8kLin7g+SsBvauRh1Pv4pMhsgXTFAvLSabXy8dNzHz+HBUUCCjt?=
 =?us-ascii?Q?9BsXSX0yfjODjyvUwHHAttC2Es5n4p1zKBdiDNEAk1bNvFuqWrGq9KfBcur2?=
 =?us-ascii?Q?LGlsbxofXsNM6iNpA820YBjkw26qEz6WVKEe0LjEz8uPgo8/mFWesZ+E/LRF?=
 =?us-ascii?Q?RBoQR9KVtGJp5WWTAyoRodPNiuiy+d8ZgEjbq0LjW/1iMxGP3bz2lH2HmKpH?=
 =?us-ascii?Q?4nJXJgF54g8o7CeSjP6pyw9geLVukqulK4Dzhz4HFdTF9Pf43N0GCOKIWQdk?=
 =?us-ascii?Q?H8btSQCXWoJmvP3kWVOrJ8yWsZNDwY3lWM1YtJn3LhT3+7zOcktsyui8+gkR?=
 =?us-ascii?Q?8YLnc9PsucCEjxuuPeKIcl0itvFP4GDJiuL1SIzCMZmQ6CxRl7gn+fU8ri/1?=
 =?us-ascii?Q?OAVaJSOC0hjZS3fbeFHP6lkxXOSkvuPWfz/c7/6ZYpfpa+1hwr6wyiiUrnJf?=
 =?us-ascii?Q?A4BKwW8pf+xtFr+dV9kWRz6CgjZalqPYYad90S94denMNzDdvpyu33pXtOzX?=
 =?us-ascii?Q?UMVSiMGKUNgp8M32JHwpVXOs6KuSyt7TBx0/dnx3OZXk1+TWX7D/Ul+Bg76c?=
 =?us-ascii?Q?9HDg8dTvuE0xSAerm4f+uQQlII8PsyxIzEShck0oxt+xslpEwLt8inUNFqPE?=
 =?us-ascii?Q?xdz/jjiqv1XTu87k4Vp+lwBysipJdMxoUMVSeHAkozQEBRAQcq+63UVaynqw?=
 =?us-ascii?Q?O/1RiSj00m/ds70+yMWnG9aV1plhd4Bb6nPeaYZocRFreIjygGAGZvtfhhCf?=
 =?us-ascii?Q?74H2dbhJwLZ3V3DITkixWqL/XwUvvERlShHTOQJNporRaywEtPJOaM1/wqkX?=
 =?us-ascii?Q?4n7bsXqHcgmnO/L0i1+SkuJE2fIrg3ybjgsiEHAA3EKwsyEA8GC9XrqWSzBj?=
 =?us-ascii?Q?oGE9TKJaOfdt6gVBOyNIRU1QSrygkvNROWYW3GuxDTg6Gy9JP5H7swl3C7Rp?=
 =?us-ascii?Q?1EZEdcQ+TTVA8UZXfaFn9XGl?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce4753f9-9f53-4d56-f636-08d981ddb887
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2021 17:39:13.2150 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L0kbFhJp6W++WsmbAN6pNrhkOA5iPqhPQLbrHQ8K4CQsSj/2M8Tz7/DkXFHejlb5Q3Ymc6xf0tnCzsWftNilbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5117
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next 3/4] ice: refactor
 ice_flash_pldm_image and combine with ice_devlink_flash_update
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
> Sent: Thursday, September 9, 2021 5:19 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next 3/4] ice: refactor ice_flash_pldm_image
> and combine with ice_devlink_flash_update
> 
> The ice_devlink_flash_update function performs a few upfront checks and
> then calls ice_flash_pldm_image.
> 
> Most of these checks actually make more sense within the context of
> ice_flash_pldm_image. Refactor this function to fit the argument format of
> the .flash_update devlink handler, and merge the checks from
> ice_devlink_flash_update.
> 
> Note that the check for overwrite mask was converted to a switch because it
> made the check easier to read by avoiding the massively long line or weird
> line breaks that were hard for my eyes to follow.
> 
> When moving the ice_cancel_pending_update function, notice that it also
> takes the NVM semaphore. The main flash update process also requires the
> NVM hardware semaphore. We can eliminate the call to get the semaphore
> from ice_cancel_pending_update by placing the check after we acquire the
> semaphore during ice_flash_pldm_image.
> 
> With this change, the ice_flash_pldm_image becomes the main entry point
> for the devlink flash update, eliminating some unnecessary boiler plate code.
> This also eases supporting a dry run with the PLDM library in a future change.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_devlink.c  | 52 +-------------
>  .../net/ethernet/intel/ice/ice_fw_update.c    | 70 +++++++++++--------
>  .../net/ethernet/intel/ice/ice_fw_update.h    |  7 +-
>  3 files changed, 45 insertions(+), 84 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
