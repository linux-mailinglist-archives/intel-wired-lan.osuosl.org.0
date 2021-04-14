Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8084C35EA81
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Apr 2021 03:47:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F23E54063C;
	Wed, 14 Apr 2021 01:47:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HBPJEZWw09ZT; Wed, 14 Apr 2021 01:47:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 50ACC400F3;
	Wed, 14 Apr 2021 01:47:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C77E81C1148
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 01:47:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C319B8461A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 01:47:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7BW-AC3JADkx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Apr 2021 01:47:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B2AEC84621
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 01:47:18 +0000 (UTC)
IronPort-SDR: 3WWLRP93Y3mdG49wTMUzlQuMCWtT16Sf8QVWtUVjUwloopqItee436+bF+gsktbOZGRSgoDEA6
 pnTXca+QxDtQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="182052999"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="182052999"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 18:47:17 -0700
IronPort-SDR: YfEKfMc+Zrtc+UxSGXtSsuYBhyGdoVNKTMhgR+mP3BRawSql8B1vRIrFG/Fe7+GRq4QU9IvecH
 gvJDMrzgGuJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="383507586"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 13 Apr 2021 18:47:17 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 13 Apr 2021 18:47:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 13 Apr 2021 18:47:16 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 13 Apr 2021 18:47:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nAphPS1J7qE2+tEEdmdssrrA5cRoUMweT22QkE2mVZzBry588RX/rX1KcrF7H+/tNjg25vOe75CRDYsb3ctzuELhV1cDzwJRJOrVO+vaev3xBJda4ahM6Cv47n/ae4R0ivVIyGELeZpX+vuxSpt3moTZ2j0M2kt/UZhkjqDdC8p10LLrmW286YuepdLrgS9wnKeFtkOTmpNgFHd5bv9TsNXArr6UP5kJG2A5eDqAr+PPk/Fmu2ABdqeG2k/qAJTk8nvOIoB/AUpq0wzeRoib63t4F4W3MWFNepubY8uIXemHDZEKT/WOXxxWYTtNWuHRcyFVw3Kk/PJ+PP5qeaY3Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=olNDx8+s/N4Kp2hreR9EAJCvglPYBs0olxoofFebAWU=;
 b=HFwx3m6VWI/lv2Lqp2jgTZK/BRDI7RmLHTJ8Oy2XTIunFwetL0wo5sPovXV7lsXjhGFeWSyNHgp5SBAV/HFlh2HGsnjKyy1ij2p2MjiNzqHt3uMwiMaME4MSGuImRefiicd3LI1Pj/KQ8HR9AQu9i0VtbK38sqqHky5EGaTd2te2wPTp1lZlqcJLzgLLQolEn7eCn1mv+LK6RSLRdH6yqrAHBcuBLLJeD40Sfaj+/wDqFqc9+wOybjfrbYhBaT8LUqeBAS/yaUSs6tp4xV7faNTCs6KPJ6hLIg0/ggpbV8uUxBxQP4P/TZQghQJ2K36M2OJcBV9QKNZIubQS1MDCWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=olNDx8+s/N4Kp2hreR9EAJCvglPYBs0olxoofFebAWU=;
 b=YURxqFqZRpvr5H5ttpawjQGJ4VPGovla1g57/KpZYRnzptqwWYdJaZnNNA9D3r5g6AmX0NC57ROdf/jr5T2T37dq0EfQuGECMlfahQkQrZ0Z8F+jpFyp3KOIJjk5Q108ebrdvCPaMURxUTsNFQXbMBUfpWYLxaxx9LUgzw8hcy0=
Received: from DM6PR11MB3099.namprd11.prod.outlook.com (2603:10b6:5:6c::16) by
 DM5PR11MB1563.namprd11.prod.outlook.com (2603:10b6:4:5::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4020.16; Wed, 14 Apr 2021 01:47:13 +0000
Received: from DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f]) by DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f%6]) with mapi id 15.20.4020.022; Wed, 14 Apr 2021
 01:47:13 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 1/6] ice: Enable RSS
 configure for AVF
Thread-Index: AQHXMAGer2B6oQNKzUWnQ34z6MuP/6qzPg+w
Date: Wed, 14 Apr 2021 01:47:12 +0000
Message-ID: <DM6PR11MB3099A9DD01D4458C89088260D94E9@DM6PR11MB3099.namprd11.prod.outlook.com>
References: <20210413004844.32462-1-haiyue.wang@intel.com>
 <20210413004844.32462-2-haiyue.wang@intel.com>
In-Reply-To: <20210413004844.32462-2-haiyue.wang@intel.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.46.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ebeaabee-92ad-467f-869b-08d8fee7399d
x-ms-traffictypediagnostic: DM5PR11MB1563:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1563BB4AD03440E1E750A8E7D94E9@DM5PR11MB1563.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JabEobaD4p3i+e1h3GIamvRR/zZceDEYD2FcSvvCApyQZ5WcXJUtdjJrpPqbi6YKqoWPl8j94tf0MutA7SaqbwCcg22crYKiMQvnevwRYlKzBYbd3LBj4OV16VIFZJ7JwMwGaCkd9B9xL6tsNXkCrG6qZvagTAcXhmhVWeONelgyJ4zxCCoe6E5CvBbJMHdlIg31vJNOAyv1B2pNMaSB8AYVkXCvYO6Q3WISrQweQANkFuqPHExA95AAcy9STrM+hObeYuNTJ7heD27XnbYDHOz67D4PZQOYNBVgBTvUmo8JjpTwDrfvsd7v9lm3eKC7yLNFXaCQHQ1YPLymC7VhGM1uIsFPlI5r90+oPBluVQ/AivppnFn+Kgrxy3IA+wl3x5KSiy4rCs3k4ScdYQ957B8b39NLcVo/3PnMRwkbpS83WgzJhyLNLUYY/UmSz2Yz4luIio+zW9XDKrVwvMQKIBNDk1DuhVlz38E2iYC+b2v8xnJpqpF4z/UnUaGcAU9Zr0gbWQszsPvECJf3bfLq9+Z5/Z/PLY70Jfsf6hj4mkbOZrRPB5jrWd7CDAgDrm3zJod+RB1qFo8LNJ7C4K4kyjrmb+iyCUa+LkxEEoSQJcg6fyn/wDyXgxg8gFG8fRUQg/EbwMOMNFJihb35TGecoY2sowQrk6z2llwL6r28xgxfclJjkYg4x/k33mzNpmBb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3099.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(396003)(366004)(136003)(346002)(376002)(86362001)(54906003)(6916009)(316002)(66556008)(52536014)(76116006)(64756008)(66476007)(33656002)(478600001)(26005)(107886003)(8676002)(66446008)(186003)(53546011)(7696005)(9686003)(55016002)(2906002)(71200400001)(4326008)(6506007)(38100700002)(83380400001)(966005)(5660300002)(8936002)(122000001)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?e+DX+Lw1OxFAiLw9ARXUL5sn8D30QiluUQKNoAIu1c+6zDNsPR50g029bgs1?=
 =?us-ascii?Q?K7S7ZZ9EoDYMuZED3bs+cxZ6XrBMiG4JL1nbyPDDqSuzTAtqXkhdKonT5OUs?=
 =?us-ascii?Q?yXP4zLKD2UNI8d9HT5c7m7WGZzewBmGh53iya9PR1LO8TMGIZOnDXFEkedIa?=
 =?us-ascii?Q?zTmDrt2JDKKChwi7YndrYP1QShc03jGsy7W8q7Vw8Jf9Z/V+5HCPqezWZ5zn?=
 =?us-ascii?Q?d5Oz2ak+/TUmtK7abRfNGLn7PnlJR1VmjIqcnfhBy/7uiQ7WAhgn8GmkPgli?=
 =?us-ascii?Q?cYa8l2yOXabW276oQNA5WxeJ5yKpVGyKxw8xeuD4SxlU527u9NbWX5XW6BSP?=
 =?us-ascii?Q?3hcwtK4mTgk0Vfw1pXfLonoyJve9iLH73wbhkrSCaHI9fqwoKk8rJk81RE/G?=
 =?us-ascii?Q?uCSXV0HbPrg/dfn1VFrAZIWCdTweWjHNrdj9CvbHJk+g2fZ4oefRJLqoexB7?=
 =?us-ascii?Q?suXr2AnroQ1J1HlKGV7Y60QaQItWhmPHMcRre1FpvyqQiQ+DbiBMwIVtU+/j?=
 =?us-ascii?Q?Cyr7Mcd6PfwRxsq0GEfRE/8Ea+mvpM6a1dfrl5EmjSpQQttDewhOp8p0g2gQ?=
 =?us-ascii?Q?O775dJmkgYox0oabWtBgInGlJJgnsc8S0mdQcsCsZSYh6AMRacuFEeXIysuH?=
 =?us-ascii?Q?2S7Zjd9BDKa0rr/+5B3y24jjL+faYUJJzUdOIsJGVxptVVmJYrZBo6ru8hDv?=
 =?us-ascii?Q?fkFU9OCtNDX1YTynhTDNGsBGc+Xx/BSIalIrWw3YlAaMLrb7r8FhQVCY7k3g?=
 =?us-ascii?Q?dbuqz1OJoeRJMp4M93nfWOkzgvnhraTJsEqX3UYENjpo9JtdNTpx1yRX7qxC?=
 =?us-ascii?Q?QxsGNJEKTeH0VJ+fVckpeC7jX99zsjj+DmduYN9BdNkoSlg7Xs01WRjiwf6d?=
 =?us-ascii?Q?xfEzqdCwpZMQC74UuvJpqfVyeenWuJgAkJOF6xwMoZ8uNrdkLrNnpkJc7J+W?=
 =?us-ascii?Q?83yIJy87Yn80BgBn6GMULp17bxpNdV8Fu+Q1s4idismXkRMm6ukOK979EbLc?=
 =?us-ascii?Q?n2PIseN/bbVWcM8Ni78SyI837qYwj1LaiOsOMWnvuMl0ba2uWKseJjzOxbVb?=
 =?us-ascii?Q?GXiT89l2fLXxrj1wM+DQ7zAAYKYQazn7RYSTzDxyuydJjTJ66zKC9ypLynQZ?=
 =?us-ascii?Q?ktORG2jYlTFEnlDFijk1JW9VAV5eAZCtJPzJoJ7HiQG7T5hviHnc9+oJiDa9?=
 =?us-ascii?Q?uu5rZ7iq0oEkB9ZXPVPKzNEpl2HqnNerpC9zMh6ISCtLKVHmmqRngjRJR8Vn?=
 =?us-ascii?Q?8S5VlTZPc43pr909ZOyWe3YsCDbXnOuFnXjzch1ModH2frC+8+pbBTodZENJ?=
 =?us-ascii?Q?VaQ=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3099.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebeaabee-92ad-467f-869b-08d8fee7399d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2021 01:47:12.9661 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: en90hS3hpDzwDlW+hnCT/BLrTx4ulXhXEF6oUt6zUVECx95c3INeDzuZ5qj0a1Z8WiCXpzBr40/k/sXmKXMG+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1563
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/6] ice: Enable RSS
 configure for AVF
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
Cc: "Guo, Jia" <jia.guo@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Haiyue Wang
> Sent: April 13, 2021 8:49
> To: intel-wired-lan@lists.osuosl.org
> Cc: Guo, Jia <jia.guo@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 1/6] ice: Enable RSS configure
> for AVF
> 
> From: Qi Zhang <qi.z.zhang@intel.com>
> 
> Currently, RSS hash input is not available to AVF by ethtool, it is set by the PF
> directly.
> 
> Add the RSS configure support for AVF through new virtchnl message, and
> define the capability flag VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF to query
> this new RSS offload support.
> 
> Signed-off-by: Jia Guo <jia.guo@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.h     |   3 +
>  .../intel/ice/ice_virtchnl_allowlist.c        |   6 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 453 ++++++++++++++++++
>  include/linux/avf/virtchnl.h                  |  25 +-
>  4 files changed, 486 insertions(+), 1 deletion(-)
> 

Tested-by: Bo Chen <BoX.C.Chen@intel.com>

Regards,
Chen Bo
______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
