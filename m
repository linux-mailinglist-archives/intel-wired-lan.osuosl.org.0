Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3D662D83E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 11:40:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66D3540547;
	Thu, 17 Nov 2022 10:40:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66D3540547
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668681618;
	bh=4zclD6j3ymC3cwbYLN++TcLqv/Ib1wz4R9HDF7CIEgk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=74PfNS+gCMboD4zaVrgbJs8OBjTehNybwft9uOIf2xHTo9Uh8zMV2MlPsyud/AEeI
	 2VwIzWV6broh8aiQC3gFMKrQh/VFr3L6Xu8T680rxOFGK7/iXYLyFFb7+LTcCTgzn7
	 MHG+JpmkV2a6VQx3rwmN6rcgVkmCSRCe2RpHZwQsPIt3aqnJvqXQx7BEp+J2kseqZD
	 i/HirlLBlk23TcjNFGU5C1SEVsZKmtKHICzQli7YQ0eNehFQcJoCF0t7k9XRMAz8FO
	 QApdH+SrIFEfiZfAmWB37F5T960qKYKp7pee7JNproQP3CywqsdckcSFOPptR8EJSA
	 lCN+MrAbMOcZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oQJVYxHiOFFP; Thu, 17 Nov 2022 10:40:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43641404B2;
	Thu, 17 Nov 2022 10:40:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43641404B2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F1171BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:40:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 05D8F61039
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:40:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05D8F61039
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e85JrJZPHf3d for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 10:40:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E73C461038
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E73C461038
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:40:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="377083453"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="377083453"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 02:40:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="634012669"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="634012669"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 17 Nov 2022 02:40:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:40:09 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 02:40:09 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 02:40:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GvyV0opEU8kqMqQbcjjAQSsptEyP3Fy0E2OZoZWUC2VhBgxKy6CcifA0K2OmeHoiGTxsoxQDAvxZmLkLaj0ffg2zlGJzFMCz6fqU4pW7YhDqM+ry3GUG88/9Mked9fzwbIpzS46I2NgfIzFqQl+mj8KmXxEj8L5X/2TM0eTcNpbRySm3pPi9k9EzhVemUNbTfPQZmEpXgnB757TOf8T49tN+SNnm1PtPdmXiucct4MBy1UfGfime8b5XUeZUd9aGpPZUWd0/xsMrcFp7drnehnm45XEhPMq+BWI6/Iav0LdlImuLUvdUH0WSfIDCjBs+li/fKH5LVTy+yjAvY/SMVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/3OwI8ObqnIU3sv9FiLa5/nb8co2XjimmzKN73fdLVA=;
 b=lHlR0GRZuYd/LMYTkLMD97RhjW+TO6Jfg4b7Q1Zlu8w+iRIZaFCXEZI+sL1xQkptvNVX1m6Lj5drug1pj2P5L9WlsPxWYOmgeKqNrY2nqy1v6QgJ/7yMA48IJAxyD5DAubGwaZMUyUZwQdRKa6nqUlrSKuziEa3wbsa90eKQtGq53nsdHH8uuk2eXv5RTjNCDpvkzmsD+5B3s8iJb91jbDIny/LilolgvzYhelHSotHZjUthvzv5vKDH80eJ0mHvxelw/X1zPCubavYBGiZlzvso6uk60wG1/FOVdgCoq2lHzKpOncq+1w7xDDp2DQ+zNrnrxh4Z8IO4pyJsQB+4Sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by IA1PR11MB6123.namprd11.prod.outlook.com (2603:10b6:208:3ed::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Thu, 17 Nov
 2022 10:40:06 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%6]) with mapi id 15.20.5813.019; Thu, 17 Nov 2022
 10:40:05 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 01/15] ice: Use more generic
 names for ice_ptp_tx fields
Thread-Index: AQHY7kTkIdhR8NPi30GM/z1O/cwh165DBSzg
Date: Thu, 17 Nov 2022 10:40:05 +0000
Message-ID: <BYAPR11MB3367A57301DEC4EED02B982CFC069@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
 <20221101225240.421525-2-jacob.e.keller@intel.com>
In-Reply-To: <20221101225240.421525-2-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|IA1PR11MB6123:EE_
x-ms-office365-filtering-correlation-id: 7e17d25e-7b3d-4eee-12c2-08dac888174f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PEOyrg6kxmq3b5Qycc2kDuVDANJr5sHe3a8T6WvCVJ25la46dO6uyiw9jJgZFDFo5GdAqjbS4Vi4YO+LwLk7dt694mPczxsNM1UwJiZMwJKar6YfP8QqrU1OO8fkfLeNFPGEaBD+pCk9slPfIcLMBabKXKYtkhsiJejNX11MJI+xnr/uCTZPWQeO3/xKca1q7VeKEHuqE3rjqQoFnO1Yxv4BiEcQQTTuXxQUC47z+0LHphcW0Ii81minmySMaO8VLKsTVdMWGxAWsM7gknldqh9lwWJ6BfeM4w82qTzWsLe2SbGXoBw/2pJJ07E8MdpIeups5CKHCtnFxpuQOjNqa3YekezriFmm8Cllkdbw6n0URClDqkUbxoxEIz4AOTzF/WELlr1THe0BXCNQM/wcLvP4atv+C11W8eZg5FJeVAi+1/NtFehQP46SnVT7z1EiVa7uPYbmpLaXi6zp4jjI7HevfO2VGX1iBcdk4WBqQj01l80vBY99DHugL4qPjI8xOE8wklaQRuk+GddDUDudM7Zi+PEmEQubSf5QS75X/93l7/OrOasxSpcReMdBrcz2OXfjAKBbnpM9erglzouzMsyhIyAA/o4Tmyvlw3V+5Y0fJz6c0RI2QAGxMYRfBHQ3a9hU1/tMFXByc94TFBZjIvh2FKHU60tp+yl07vmWBVV+dtcB3SMnZ9JtoXEZSqrTdKx8Wh6OgrMG+gszq1uokSdd0Xe56M5bqBu9UJm4IVU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(366004)(136003)(346002)(39860400002)(451199015)(71200400001)(107886003)(478600001)(41300700001)(26005)(4326008)(8676002)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(8936002)(52536014)(9686003)(4744005)(5660300002)(186003)(33656002)(53546011)(7696005)(6506007)(316002)(110136005)(83380400001)(2906002)(82960400001)(86362001)(55016003)(38100700002)(38070700005)(122000001)(41533002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jm0CYQ0F1+/mlRy0o56rsl62GplQYtuc/BiVwUJE0pSsNM0F/D5bPhcIM7XH?=
 =?us-ascii?Q?N+4p4SZuG+e/tSPMa9QxkH72AUZDtxQGKgR5vIqgmAgqSzatzfXeSVwUH6zz?=
 =?us-ascii?Q?mdCG6hIcyfKeVak17NUxAa3WPcBi3hLTNs0ogzTfbrMml4CVCoZSgVC13yOE?=
 =?us-ascii?Q?xCRf9jjjLV3EwHRfxrXbyosxcYhf6EMfYwYwJQnIu5OrE2zzjKivN5tD27Dd?=
 =?us-ascii?Q?Fs4E3IoInjmNTmSLm6omKcw27ZvI50C2MqK/x804frGWB42DwqgaY4Glh9qb?=
 =?us-ascii?Q?iZvqkQ+wwvWw8qB2RsA4nLWErLIFApDQsSy1avgHR3wnLIx0p1qIK07FoU2r?=
 =?us-ascii?Q?3DLfZXkwRqXAPmI21Sp/5rOVuFZeBrHuAn0DTil4DlIIM/+YQdXyuf0UutL4?=
 =?us-ascii?Q?rxisny4Oc/GN6uTinwkbkYc0ZLGt7P7aeMUCoBKCAcMk8V7RSKJlbl5UIbuA?=
 =?us-ascii?Q?MPHZSJwyrDtWpyOVmIV17L3kXre5uTzIiGEkehzfauUunXmV0jyvhdawJ4Ah?=
 =?us-ascii?Q?91lgKQg2+EeQomR8YOU4dRFENffrnpqKgxN5yxqmgppNeqq9GitEkvzguMi1?=
 =?us-ascii?Q?J5UaHD9BPY9v1pBNr9mX1XiFC6nH6TbIwE8lUdiK5qj5SfqO9/iuds+51HMo?=
 =?us-ascii?Q?b05YUqoX0dH+skv2dB/OIdn2pjtEW2BaU0nLyk005uIRnYMJUQ1wc9tPz7Vq?=
 =?us-ascii?Q?hCddkAz8lXTKwKP9pHUqbzCjHa/MZ4d3QRJ1q3A23MRZwWY463P8fPYuLwQY?=
 =?us-ascii?Q?DOXCnuAGM7lrC/Opc5iEqvpniqP7ULKC103jipIa+TaMrSQ9vOEAm7Rulzi+?=
 =?us-ascii?Q?7z7SuChImzSfJ3DVXVFpaMnoclzl0U5tN6f+gAIOSKB2CLs4QNu/G0hFdcfS?=
 =?us-ascii?Q?WiHcauB/JInaf8jGBnnd19Ad8ZiVb5cpWjUWkk2TT2FX8v75aaLp1ibO8fim?=
 =?us-ascii?Q?M9aOuo2T6a86ScpRGrLxk423aBIEcE84Hn/LmaogweIBy4tmaIsqPYSHgQx6?=
 =?us-ascii?Q?nY2smz3uEaWruTdBDlHI7N+pKDNea8mVqtIkISpeRAvLqGHqH6FUMVcVnpVl?=
 =?us-ascii?Q?xoe66lkBeU/1RzxeQhwa05g/7WQsl7mizZh+yLkzi73a8CLhV0JW7fkfSG1j?=
 =?us-ascii?Q?/DvNeKlj6dlHKheM2FACZEmGXVx70e2Q2AioqAnijQkS1jVS07QhyNDUn4iY?=
 =?us-ascii?Q?iqSbPnVMWMRzfQMy8ghB8bA/QsNymjTuk2C35f5hJ/BcMx3kLH0lIjgLHVke?=
 =?us-ascii?Q?Blf1fawSkS4cYX9AqfHi0gwbh2ShSA00uAxyFwsL0+/8Ykm+tOSMD9JmixCm?=
 =?us-ascii?Q?PIHC7QF8r2mTRSjn6V2tqjM2Hif5R6ivntK1nhk6t2nvin0CkgHGPJhum91i?=
 =?us-ascii?Q?3+ohMtbbJ6IUL5FqplgPt0+zUrYu+H/jtiiH8jEMrr99DRHXI8vOykwITsFe?=
 =?us-ascii?Q?E9aLUBEfvByyvEv8xaZhdEcae8SE5QL353WCALq8tZB6ru8p34kyn+yvYojF?=
 =?us-ascii?Q?03M5pR4PZwaiD2ZbsRcUku8UcWeNztT6QhBSp5cz9SJvwRaE/sONA29JST7Z?=
 =?us-ascii?Q?T9kIyse+56HRcxb6LKvhwQ+LcjtbVjmdzBnks0TB?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e17d25e-7b3d-4eee-12c2-08dac888174f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2022 10:40:05.7887 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GKKeg3VIgpEJTwKclJ14uk0+7UUGjupscNQhGx1gWDbND0yya5LZNIlToqYR8aa1ItapgNOJgKFnOYsQoFUmEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6123
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668681611; x=1700217611;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HQnmxd7jH88cieQoP+ZvJC9EI8zkCQ+BbQkbfOuXkz4=;
 b=ExvjSV9KOiyNmkfYvKSuUBCOCRqk7QX1G8yy93WWvqLGGPhU2vmYdNjU
 g+M33DvpBg2S7MCUHm7PNcT4d/arOcaWTKztjJNRB51ySQXO+3Gb9pnAu
 vcKrIJH0p9+bWEYy4IEkIPNzEj+T+/uSBp9ZHo7zLqbA78y9F/AhrU1wT
 hgtXwmADOelki8+Bq0WRimHPmz3+M2gGDrUghuqem9U0VSNIVEshpbJj4
 O+uYOA+1j4EeNM/aWVysHpCTbWyK5Gq6y3eRVCu1ehjfrDdqSqO+7tdT3
 RbC/HA0gtHyUgKceMo9BD18UydmXNB6sBM5nzhH9EANLPfDCYisck3ulk
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ExvjSV9K
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/15] ice: Use more generic
 names for ice_ptp_tx fields
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Wednesday, November 2, 2022 4:22 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next 01/15] ice: Use more generic
> names for ice_ptp_tx fields
> 
> From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> 
> Some supported devices have per-port timestamp memory blocks while
> others have shared ones within quads. Rename the struct ice_ptp_tx fields
> to reflect the block entities it works with
> 
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 26 ++++++++++++------------
> drivers/net/ethernet/intel/ice/ice_ptp.h | 12 ++++++-----
>  2 files changed, 20 insertions(+), 18 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
