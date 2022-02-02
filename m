Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5704A6E5F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Feb 2022 11:07:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E0ED940447;
	Wed,  2 Feb 2022 10:07:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NkP35GCOG4EG; Wed,  2 Feb 2022 10:07:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5D920403A2;
	Wed,  2 Feb 2022 10:07:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EAA2B1BF588
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 10:07:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D7ADF82A87
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 10:07:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ChGCRu1G00cV for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Feb 2022 10:07:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7E3D0813D9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 10:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643796437; x=1675332437;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rcB2y+SeTm8YCyK05g3Zun0yVbGfk08XQnmCqutfew8=;
 b=O7SKfj0lVDEVQU8SxmGncEAQX/Xy6LrMJPazR6tR2cM4ZFxpUuPYXS3T
 BdhZx1GKOUm8FltWjuzNNxkH8FiPS+fH3I00LsutiKRv5Z3CvtyHi3t42
 pWFPMB4AQrnv5DDl0Up5P6dg72Cybm38R/6qDXHbUcb9eARmkWK6u5XEz
 n8ZXi6JQgt5VAS90kK5f1zNasIJd1j+sop1YHg1RdEteXd2wtKZRc2EDy
 /UokoJHgkvr+9jsAtYY8g9v+gpugiqjZdlf1u949B2BO6tmarrr3NaiKV
 8asJuT/SdAp2t1JPK2wZlNiiskh5hv5OqzG6Sx1f6DTgn/DDD2T74Z/Kl A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="231454267"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="231454267"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 02:07:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="599495364"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga004.fm.intel.com with ESMTP; 02 Feb 2022 02:07:16 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 02:07:15 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 02:07:15 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 02:07:15 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 02:07:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MPXsjVA2zHqGM0jJMQKiBxLS0rHlFEfKaKEEisl/qlAjZkUxp54kM5MafShhOkKwHD+p7ognjsy70Etltv7HQt2o4V//00UmV4RyNuEe7k10+tmXlHgnd3QmubxOivoSLJUe0H/5MUomQEsK7fjkt+gjryGd7Vz7CN7R2jmSMQdjKhsxxV8pyncyZjM47xMXAL7+/Bkf+MtDCk1yASTyw7dNOazTf5/Imnsu4x7eDDLAl7ivkRIoX8WJq55dYJJX2MlEaZXSAnahHGDEMTmqf3dYnyBrvwkiZUULkeus0o8QB/HX2/RtUyhTrS+CplQLR0ElngMDip4kygnrzzqz/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XGOpmXABQoa/1+cnYv64jMiWACcD4NM0ohuQXK9zPHQ=;
 b=bFQ7RKHaI7muiKMH03yvnm+R+mXtX9sbDBI6QL3pG1gaSD6Qyt9xjix8uV6RsqW4gaVdD99wZ87VxrlRaZ00PSrrKyq6yNLXbzXqQQMij6HVTGJ1TXSWzjuVIKFoPZCjuWWQ+VZM6v43I7bJWLYeS6iphdqXr1KxLIqFs+7pwKhSETJ1ZSPsCmplLn1APie5W+YIdoFjl0PZTaaA7IgsbhzdXi9XWp2V/drNhGh53LKDEIdw8uW/gSGxqCFdxEzHh7WrHg2P+1RoHG8ophXfA8VN1Xbo4HHT7IFOH81PI9339HDuo0aOrRTeoV6LdMTNCyiX2jXUqvBb95Mg5SxCpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 BYAPR11MB2951.namprd11.prod.outlook.com (2603:10b6:a03:90::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4930.18; Wed, 2 Feb 2022 10:07:12 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9%7]) with mapi id 15.20.4930.022; Wed, 2 Feb 2022
 10:07:12 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] iavf: Add waiting for
 response from PF in set mac
Thread-Index: AQHYEq/6TD6ibd/cdEW2QHoTHsHElqyAE7/w
Date: Wed, 2 Feb 2022 10:07:12 +0000
Message-ID: <DM8PR11MB562176C57347C055A8470CFCAB279@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220126122459.4523-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220126122459.4523-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d745bfe9-5d52-4ac5-a7fd-08d9e633c833
x-ms-traffictypediagnostic: BYAPR11MB2951:EE_
x-microsoft-antispam-prvs: <BYAPR11MB2951FC4D1678E6FFF64778F4AB279@BYAPR11MB2951.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Bijs0+lGGrg4oefF9cOFsPuJeJTXgoxSEaTqRD4XVk1nzFDyRPyUrL4PuNMZhC4g+32kdqOEx5zXfgvVsrXQ90V+KXLZmSBH2FR0j52Q1cqcwPDQKMw6/zghw2yZCN+CViJODP4X/b8TdUTNtlmo/BcpsIrg9mLGTyU0gGv3eRsCxp2DB0JnzUgJAjvoRpq0ixAQjXlWjzqYlihKMe9YNt6cmDCRSalmJV9W6F9OpfPSO1xQYhsfNsYBnUO90QwB8xPFbowaIPsqelZvCKogrrzd/OEYfxG1s/hxbSk1KOcxvAhencelxt+jcSaF4gkkzVisvbM+7XES9B7XXlEqCbQqJ7wLivXquvhr4K8XDkqgTCC9HbhdZ6XdPOjwR21y5kU7giIEBiI/izzwaboWP+kkmMwXiI/wbqfNoar476DEfDrx1aZUoQLzX6M0TbBwkJknkz09v3Nq5VJMz1mdL3i7zUTMTCIjrsi0gMZk6BUcanRYcaLaIPFCYdhySBZ2cPWXXmUdEv1aTBk/bOtGt6jsasnCITq9IGKTxwdGjDENVlymMsnH96jt3Ew3O3p91tMuauk/fksk8Mo4e4gwmmZ5/3gYx9wX7DILu65/vCkFOEKutmrjKBEmT1QcNTVhfl7ZBCKuQX291yXUXigix9QO9y7dnXi0gRNrOE47VQdGruIkvxH+tjHttskngf0SfhVWcTt0Oog6XksNJpM5e/WkHEUJHfVrgrNT3LALXqTu1+7aEiyvsf/SC5F2arDF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(4326008)(86362001)(316002)(122000001)(8676002)(52536014)(508600001)(82960400001)(107886003)(53546011)(83380400001)(26005)(33656002)(186003)(66476007)(8936002)(54906003)(66556008)(55016003)(71200400001)(9686003)(76116006)(7696005)(6506007)(38070700005)(38100700002)(2906002)(64756008)(110136005)(5660300002)(66946007)(66446008)(69900200002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8EcmXaKfTh3ISN/Qe4VuxgwsxoM8IavIn6zbuUFDct2Av8L75mW/a6QBRJdY?=
 =?us-ascii?Q?i1oIcGr1kdCqb8W+1Avxa2c8j5azFmRVPx1w4MeR2SN8INfm1ExNKTuJ4sWP?=
 =?us-ascii?Q?Ou0SH4AkneEOolUgAoS3Iqgfb3sy5qmOYSaLOoyecB7XBapbb8BBztiUGSPO?=
 =?us-ascii?Q?ZhotyZ69d6bdQEMJtutLj0el+vv1aHXsvSKDd7TldG9LbGAf2dfmgdU43og5?=
 =?us-ascii?Q?ErN+q0cJ78UGdebveRTk2ifri1HZ3xih16J7xSjsR8cibo90ZMhydR6X9f3w?=
 =?us-ascii?Q?GyzBiQmLnqxfUnmYH8Okv5sIrUg9Go+mEhAcBGr+VhZaihjkdo5C5bmyRMRS?=
 =?us-ascii?Q?19bLznt8NrCyTZgkxJ0I7wWfQg4ghCSDD0XJCqXzs8jIdUoOCQv5uslCpMSG?=
 =?us-ascii?Q?N7R47outh/fLWRIF7vAq+zyZJEAkSy6aQPTJ8pXB25oyhNzB5ylf4Mbhd11t?=
 =?us-ascii?Q?ts64/Dl6l5SwmZbX24NY2pBn9KA4yrsa8kOcdPCoIGtH29nQp7ZA4RZ5k+6h?=
 =?us-ascii?Q?kaNZKpPmJyIsfq/ROZqpNwcHk0yki06HdVY6xyDta/iUmX9Iz2kUYoLA749G?=
 =?us-ascii?Q?6vHhvOkk01dYxd+wbK0oS/ViJr828eAvDJZ2B9m8EY8G4QlPu0F8SOH68QzC?=
 =?us-ascii?Q?K9aEIXqaBL4EGH1yByNFMLgqYHo6ABRVopOOmNXhFccSY98eGGwYXvjhcZ6L?=
 =?us-ascii?Q?TWf7lBY/cyVVeug1kfTymZzCfpKV5QpPFtf1MFFtbdnZLevS7xlgrsCMcPah?=
 =?us-ascii?Q?Vsf+Wl3S0LUksldDbGmXcpGNLGspeTUzCAm5QhHl9QO/tEPm0hi2ok/buwXd?=
 =?us-ascii?Q?RhhLUSt7gqjTyZOocw9Xb4C79pP3xN2N2eqqqC/e7ZLmIhH3sMPv6dSDjwnW?=
 =?us-ascii?Q?845ZzD/YmCLs6VrPgoUPoewJgMY4VNYNi8WAS69SaBLKf0Ncu8czzKzh+2eY?=
 =?us-ascii?Q?P6Ddm10ZEl3vYgQsre6AzyoQdaZrFUidUV/qfXC4YVVfbu4Luc0HFXTQk5Qd?=
 =?us-ascii?Q?PjfuTDeRy4FuImcNxFSFkqmSVGtsC5YbDokEB8P1panvANjJrgKvMiSxkWxQ?=
 =?us-ascii?Q?KkiuLmOLbeH/w768nR6TDF9sL6SaRkXNZjgicMG8L5+/S/35adeAC/6kgZ2m?=
 =?us-ascii?Q?uEcmx0uxdTDEhKxlE6knUkuix4JZ/5SvAn8+RPEvV/8xarArh9l3DFmvgtvj?=
 =?us-ascii?Q?RszfICXrncfSboqlNfJ9w13gk6Mv1VLxnfvezNyPvBmmfa87W176d3BY7mBW?=
 =?us-ascii?Q?Z7IDeTsVzyyyQHSszZK5YTUMhtGzTiW7kuMlLbMAtYDCJWqnIxVlhwKLILnn?=
 =?us-ascii?Q?q4mKL3+VHH9swrsPiLEj7xynBa1dhJVYL4xiakuDYY5isGvhAwkmJdBn2ftn?=
 =?us-ascii?Q?9PNbCiidwa7TuHsrVl0ISf1W5xa3Sdw4WnKfsVC/K4DMxdCpfE3hhILVCE03?=
 =?us-ascii?Q?YdeLP4VazyklTOET4Zb2dnX6ujjuRoZbo/iJm6O4fVxlKsVz3SacXw+YQZWh?=
 =?us-ascii?Q?k+ouY0+2zBcHAKVTayT1Izw5EfI07r5ZZZ7JrLIojkU+WJeneCXYp+9inMqm?=
 =?us-ascii?Q?rz5k5Do1Ycgi9s7ioTL4+TfIrBCmyVJ0wK463fr/uwVo4fCaTUPXj3tM54VZ?=
 =?us-ascii?Q?JAa7Sd6CAjfYIQUhARFKdM08AJyTEAeoffidWBlVDL0ME+LUW35DOP+z9UL8?=
 =?us-ascii?Q?6tS1nw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d745bfe9-5d52-4ac5-a7fd-08d9e633c833
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2022 10:07:12.5388 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y4Ui0ZCvLlxp0w5vtwqyCCGdgPlOgBDl8VmcZNEIeA+8DnMbRkUZKi+mJp4LOiokCcgt241zX4xClFATwaigWZUqzoWA6rl8s3oBTPKwNFQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2951
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] iavf: Add waiting for
 response from PF in set mac
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Wednesday, January 26, 2022 1:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Sylwester
> Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2] iavf: Add waiting for response
> from PF in set mac
> 
> Make iavf_set_mac synchronous by waiting for a response from a PF.
> Without this iavf_set_mac is always returning success even though set_mac
> can be rejected by a PF.
> This ensures that when set_mac exits netdev MAC is updated.
> This is needed for sending ARPs with correct MAC after changing VF's MAC.
> This is also needed by bonding module.
> 
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Changed __IAVF_IN_CRITICAL_TASK to crit_lock
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |   7 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 123 +++++++++++++++---
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  63 ++++++++-
>  3 files changed, 172 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index a746f44..2b3ccc8 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
