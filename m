Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBC03688DD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 00:09:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7B73404C3;
	Thu, 22 Apr 2021 22:09:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id txY6SXiRAcC7; Thu, 22 Apr 2021 22:09:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 879E240489;
	Thu, 22 Apr 2021 22:09:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1246D1BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 22:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0CD6B40489
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 22:09:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V4W68Sihm766 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Apr 2021 22:09:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F374F40463
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 22:09:34 +0000 (UTC)
IronPort-SDR: KAtbAZRNbOeEl9nykxSZmNw1GhyBuHVYEhLSBY/qtAO4skLCR08RZwxqURgXh5pN1ZVSXDqvvk
 SSDSYoGPvcnw==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="196092871"
X-IronPort-AV: E=Sophos;i="5.82,241,1613462400"; d="scan'208";a="196092871"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 15:09:33 -0700
IronPort-SDR: MsG0wEprWZ0/7Qpaqx9Z7mwfklsFRyB12X3Wc83Zz8m4ksrRaznbGJL6/cmqzCyWchcV/B35C8
 RXUC19T6u4jA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,243,1613462400"; d="scan'208";a="455972313"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga002.fm.intel.com with ESMTP; 22 Apr 2021 15:09:33 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 22 Apr 2021 15:09:33 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 22 Apr 2021 15:09:33 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 22 Apr 2021 15:09:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LZBGiw28hNsxwESDpTUGZhw7SMAf35WpsT1VcU3ID21EKv6eyOavCmmjoX3HHSv8wPxQg337WsfHCNQ0tvKbD69IfM7Rbsysq2vS7nKfa9tfR/pmKamZA58XTQfFuwrkP8JSxonxeFx++t4ZHSlc9RrM/IrCek0DwqqXtKs9CVp+KI+dFcgJMXEbs/flEQ+9Kc2xlMMyHroHqMMlVI5ZKm4Z4A4EkUR1DTBa4W4nTCBaoTzR77KjEI+1pfmJfPQ6R+NnJI0mj+eQGysBQrImQN7V/R215io/jwKqcY7REtqI1BMkXrxCeq/6gaJqCKdvA/MHpHberXqa2XgEPZzw5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XDRuGzJzsL8JshzbTp0/eRZWUDeFt0Xwje9iv7fp++0=;
 b=J9bjrVw0G+wiEXAJrz+fWK06Km38DxG7sMWzmdGB9W2lK/1HCKES1PYAT80xB4gEHOs3ZJXeEzeI8H0CMVfApQIuvFDBrwO2cNL6WGRj9iwW6/YNw+FmVNi6jyWu1vlcG5nXPubri6dYSKj9ds0UfrC/G2Ui9MvBo7mobNY08oSuRIeVbNODYPNpRrzigSXIZqFEer88yZt/TrLCn4Dqa1KhfFq0MHICyGsJU7X1Qa/xu5rLsDhJ35azQVmbYxEMu5xIMvmsrZ6vLoiLbElLfEco9iwAAgj10yP1jkP56ucKGyJq3vslB1cjmoTfmhXF3fyMqMcO29pmj7yc5HaLhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XDRuGzJzsL8JshzbTp0/eRZWUDeFt0Xwje9iv7fp++0=;
 b=dySJXefTk+CmmMulI5D5ScuWXsrB1ssB7KcMWg45Z059aJjCgppfy/VlaroapG4P/q0x3gf9RcLZmJEosHsHbW0w5lm3R8IGvt3OtyahT+rACFd/6Mq9GVvaNHfDXsH096g/nvGQZGAZCkIzLS0SxG5HZYFsyy8d3+OpW0YfKgI=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by MWHPR11MB1296.namprd11.prod.outlook.com (2603:10b6:300:1d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.20; Thu, 22 Apr
 2021 22:09:27 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212%5]) with mapi id 15.20.4042.024; Thu, 22 Apr 2021
 22:09:27 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 07/11] igb: override two
 checker warnings
Thread-Index: AQHXIdh9X/oDIxlWUEuFt9Oqf9S2/KrBRFSQ
Date: Thu, 22 Apr 2021 22:09:26 +0000
Message-ID: <MW3PR11MB4748D8C5BADBA47BE051CF41EB469@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
 <20210326003834.3886241-8-jesse.brandeburg@intel.com>
In-Reply-To: <20210326003834.3886241-8-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.38.40.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f3efaded-98f7-48ed-1a6a-08d905db4b60
x-ms-traffictypediagnostic: MWHPR11MB1296:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB12965D50FC1AAB598F915CABEB469@MWHPR11MB1296.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:400;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Fsn2vYo3XKmmONGntyZbDrjAObqWZ4t5sKBHf7gJC09GNOMmeJyrMcI1WaAwYAvGKKH2VUPaGapJsPdiFVzNm/vrgiap4DZwYfMiPCpKVu++RUNEXEG9SDpCujlVVo02AkD7ENjVIZ+3C1jHhn71ak83dz2jBfJrOsVWm9F31WJBQwhzP6IB+jBKMCBcXCnsemJVx9YmEBsEjhUOsoTeuVOvFU08gar0V9A52RO2kfWtWIP49cmk3U8lZh4Sk7sm9KX9nUsaLPE1VTMrPP+LLtrXWq3ZqWkrgRiFh9leLjlqqXZZCxTNrgI81MDlf7cdMrDHezMtHuw2hAogXYiY1EUqMPUdwOLO8qcJZAj9lvZxRdQNKdbRml9GBJTRLxSkSWxq8k4blLKYHdjf9S7wReahYo237n8pev2779xI4OtHOZQfx5GsjcHcj5naKgb4oI7ztCROAAT27U0dhLcEsiSZwopXUNIQbF5t6JUpz4peEuFcR9ySAghn3uIZHARikmVVVPa5fA0Br5dEHJQHxcVZLsZvfOgdpAP7CotALu14PAd899A8k1x71dDqWHScM/kPUemqeNh/LkW9kEvn0qoGdvC0Yxc6pxaLyWM5x5w=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(376002)(366004)(39860400002)(396003)(346002)(316002)(110136005)(2906002)(26005)(478600001)(5660300002)(8936002)(186003)(7696005)(6506007)(66556008)(66476007)(66446008)(122000001)(9686003)(66946007)(38100700002)(64756008)(76116006)(86362001)(33656002)(55016002)(71200400001)(8676002)(52536014)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?y/9JBF4IjsyustC3a3EgB3RGl7FpPZsxqS4tNM+Wt8IfQfkDnARi8vBPJaGe?=
 =?us-ascii?Q?m4RvZkUiAd4ATMGpa5D/UlT10wPShSiG2xGI802jrLZ3LygWzINc5/bRZyPg?=
 =?us-ascii?Q?zIiutGcSRZ1cJ5tPnxYlloGqj7WC2iQlbwU/mS8uQ7fHZBrk3mukupwP3t8W?=
 =?us-ascii?Q?FhF0jk2JbOPXVkeelSCpZ5rJweVX/r0SkNeaPJVoS+Yls3LSusYJ4PozrzP8?=
 =?us-ascii?Q?Scl15gWTW1cJLdIQAH5te4Fb6p2vaEIuDr/640uYTvOKr/vpWNNyfsoJ/TPK?=
 =?us-ascii?Q?Ru1uXnUHtTv2PI2p3UcmNWdyJvqFdJgKwB2DKTMaxxJq25QSqSG5eH5+fvNN?=
 =?us-ascii?Q?37arVfSidBg66bcuzYNdYgukUOZZu+4wEVJwVfgevxk+seNPcFhOAgkIvI6b?=
 =?us-ascii?Q?WAwsBN2Gk535B77TysK/pgkLsMgFK6r0wgjW9aHaM5gh29xCh6VmhXRVVJj5?=
 =?us-ascii?Q?il9PXqiCRSLk+EseD27wRoTA4UHQY82pzFpxdtE61A9o3MBMzHbB9GoQKXlb?=
 =?us-ascii?Q?27PFV3XpVfZRK9LCwBQOJ/voJoBD0RKqymmr+VWXt9My3XsvaauwNaCTb0Tj?=
 =?us-ascii?Q?/gSbxROl1swcZMb854txCfESNKruMCSnAUJU0N4tqr8k/+PFpAGX4ql+6cNq?=
 =?us-ascii?Q?v4jEGDylzozygb0fCibpvnQxvsovxqoRDCfE0GW31kmjvv+YLLGl0vP70VhF?=
 =?us-ascii?Q?K3eDkW8jkfT5QxEtYsLF7J0YCaEvkaDlo04LerAGS9bCLawBH3RGqXJi5EqY?=
 =?us-ascii?Q?M732dnnMVViLkTIgq3QrT66fmDXSvE3OnyCf2yt2drMKzmKq7YHhkwUui8yh?=
 =?us-ascii?Q?qVO+6sXyiaOrXq2vSiRUcmeimEoUovC41pHwWa1Z+/YvUrj+MVXXPjZlXd+S?=
 =?us-ascii?Q?860Q1GY+zP5lY4EuvEjdF97Dnya5vUOUVofhPbNT33TOM4fG1JxMPCEGzJFV?=
 =?us-ascii?Q?Mt4t4rOps375WKwFxIoBKi4bE2i7PnYgQeGpNvohnjVG+Isu+8PYNAgaZlzI?=
 =?us-ascii?Q?OkBjKvw04kicWXJ5L4v3v12of7FEdL80lpAB/KQnbNAeQXJhAsxO/xf776Ay?=
 =?us-ascii?Q?lzPZ3I28eOBNLQGV3v42IiU2rlnhJIdauW3u+cy2Zs13gQnKJTRMzyIh6zKJ?=
 =?us-ascii?Q?X7A5ZfE+a5H49hO142WqD5n30cCoacKLkD4fv5+eq55mf653iC96KspNi7pu?=
 =?us-ascii?Q?7fNrCLrkN0eeQZdql7ZeEgWVJPQNi1hO/XmDQ8jUqzSpfu2u872+ypHrpW/b?=
 =?us-ascii?Q?9ty5lFSXWpylPMQynDQ+1PmsdDkjjoXFAMltrh8zAHYDbUk+uA7ONCOJHOKc?=
 =?us-ascii?Q?Lok=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3efaded-98f7-48ed-1a6a-08d905db4b60
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2021 22:09:26.8748 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J931WxrnigDmyJ4H/fILbYVV2P6yaPNEx0IzGU3OO92Ib7OCzhlyyOXk2nMIcY9xJoHA+PbrzQT6ZvPFSeUqKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1296
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 07/11] igb: override two
 checker warnings
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


>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse
>Brandeburg
>Sent: Thursday, March 25, 2021 5:39 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v2 07/11] igb: override two checker
>warnings
>
>The igb PTP code was using htons() on a constant to try to byte swap the value
>before writing it to a register. This byte swap has the consequence of triggering
>sparse conflicts between the register write which expect cpu ordered input, and
>the code which generated a big endian constant. Just override the cast to make
>sure code doesn't change but silence the warning.
>
>Can't do a __swab16 in this case because big endian systems would then write
>the wrong value.
>
>Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>---
>Warning Detail
>  CHECK   .../igb/igb_ptp.c
>.../igb/igb_ptp.c:1137:17: warning: incorrect type in argument 1 (different base
>types)
>.../igb/igb_ptp.c:1137:17:    expected unsigned int val
>.../igb/igb_ptp.c:1137:17:    got restricted __be16 [usertype]
>.../igb/igb_ptp.c:1142:25: warning: incorrect type in argument 1 (different base
>types)
>.../igb/igb_ptp.c:1142:25:    expected unsigned int val
>.../igb/igb_ptp.c:1142:25:    got restricted __be16 [usertype]
>---
> drivers/net/ethernet/intel/igb/igb_ptp.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
Tested-by: Dave Switzer <david.switzer@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
