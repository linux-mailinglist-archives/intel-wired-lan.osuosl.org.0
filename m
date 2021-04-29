Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8544D36ED90
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Apr 2021 17:45:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3F4041928;
	Thu, 29 Apr 2021 15:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8iqNrztdkCRN; Thu, 29 Apr 2021 15:45:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8DE2F41873;
	Thu, 29 Apr 2021 15:45:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 74B0D1BF39C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Apr 2021 15:45:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 62B0084512
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Apr 2021 15:45:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N2Mmgsne3gtY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Apr 2021 15:45:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 43B5184510
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Apr 2021 15:45:17 +0000 (UTC)
IronPort-SDR: t9HR/BcSfgGJp5PAXjR/rZP49D7fOLUsVBE99PRcQpwVWSxAhszmVvVx8P4BIwnPk+brCaMk3C
 MWHNG+8dpTfQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="282379880"
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="282379880"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 08:45:16 -0700
IronPort-SDR: 27Q86Ci0mp+Je873h00lsQV4Lr+L/37wL++sTfXOVTHJ7t2RZPpnlBM4bJfK4atFnoI6Il6Bwi
 NcYJlDLduuhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="448495253"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga004.fm.intel.com with ESMTP; 29 Apr 2021 08:45:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 29 Apr 2021 08:45:16 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 29 Apr 2021 08:45:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 29 Apr 2021 08:45:15 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 29 Apr 2021 08:45:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NHic8nfSjkfWWNBKHQEbo8UlzWyHvgPafEb7kcPND5byX61AMVLHlhcG4Yy65xxLi4sJSDcgzf2SaEOkysh4NqfcD1fr8RuGwNkuCQRlbzaz770QScd7asQtNRhCtUtaEUyDidvqPpf7duM/3OH2v6oExVzdwpYzgyIEvWhnJKipTYKbV8nA2+uRcGS6qAaAJkeWg2jLid/MbTD33waEEXNurrYmgctKyHYCOPRg17xq75lbysigWpXNws4hoGsTg29KCgBy8E0BNdRFSxUqSDVQ/JRe1TKicRzo0WwYcjfJ7z1Crbi/K25q50QBJKNfMJUXRDn78T8xpP7Bw/cq/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5yfMVRZiEnoAKOJQFgn1LSZjEK7sOsl+vCg5e/uhTyw=;
 b=bhyGK4bZ+y7iyInaobpEXP5spqiKOg/DtdkSt2Nt355uSxmQTvNZ8BSdo09x6VX3V/Vsdwa7qsWjYR6CfhHSTygPeX+wasXStgKP5KapBVJkWfBsIECSP24EHeIQUZJr+w+s1gwIQ+LGHIngI5XBk50hhuEeTrKMW4CXHnCLOjvTPkS2J/x42StPVbp5peZSS23XqaY8gSvmdbajADXMo6lJCh2szaGLl9/+r+fHq6EbABo7NqIqHMwFqiNfv1OH00vTbMGwmUA4O8uy3mZbIfZgcTNK8fQwa8cKOr+4lBfczGRTR9FyxR92Ptk2+kjYICEenoWcQqJIDJrJuP46Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5yfMVRZiEnoAKOJQFgn1LSZjEK7sOsl+vCg5e/uhTyw=;
 b=F3VdTTZZ8StCKaMxL5+a1QRPRu4pfUIf1zSv8l13a1pMcIzxLAUUl0yNO+rbWVjT2VAK7V24vUeZ1YsPIIGxHtTlfF1hAv5Z2PLKlGCVvNc41e8kGnv5FErhq74U5++CFVYHhUEE7Vi7kZLBjxXR7EXiNKDdoVtRE2OxAsGjyJ0=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN6PR11MB1667.namprd11.prod.outlook.com (2603:10b6:405:e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.23; Thu, 29 Apr
 2021 15:45:14 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::2dfc:3be2:c305:6346]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::2dfc:3be2:c305:6346%6]) with mapi id 15.20.4065.027; Thu, 29 Apr 2021
 15:45:14 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] igb: Add counter to i21x
 doublecheck
Thread-Index: AQHXPPuhu28XBt3i+kG7TSghYh3FIarLomUA
Date: Thu, 29 Apr 2021 15:45:14 +0000
Message-ID: <BN8PR11MB379546E1AF61B4ABB9344EA8F75F9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <1619702916-379862-1-git-send-email-grzegorz.siwik@intel.com>
In-Reply-To: <1619702916-379862-1-git-send-email-grzegorz.siwik@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.198.147.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b56abb54-4b99-4f6f-ae92-08d90b25c7e0
x-ms-traffictypediagnostic: BN6PR11MB1667:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB16676AD364A68201B481CC14F75F9@BN6PR11MB1667.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1122;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cJvhYQ4u9U67LAJHjXkkcujuU3o+uXKPSjUAfIPsskOBUYOyPZZdM9u/So2XsI7NdsRu/viFJywE42f+rqNBos4f7kA2NYCCopmXQ+W7wBBxqv9fzgphubx9NP58byEtzvio0ktcP31wD8MBPRtUY5q0sRZ0+PSDoQMcxewsK586zzsDMrWucqzgwUCDGclEzNzYinuHwOyPFdm/WPAkh6JZwqUItLxB7trqqmn4rUqr9tFB+R2Np2N2xNsW+BTzp5uKfylqR5kjtWXOkoDgBVoAWboNd2Lkc6hzwIHIETERXl+fbAt58ej/phuMYhK0cIjtxTjZz4ag5nUiGFDu3Dbe1mDxWWA8UJ/AKgCDCou9YJC5SZ+vL2omn+mVh6afPBgTxKe1NrSFmk9Oa03LRL9bnp2FmYAUNnPzFrTyS/XnDKHGUbEm+QkL4ZO2wKvwH5g52E7zIkB6aZ3LLMplIqea8Bx6WCfK9XH2bsA2PDotucEfID9uMboS6gEYl9M8/KUh11mH2/+eiLeTbWf0Xb7d4ulCpUeKttfazvJIhBUxeliL1ZRaLevnPbFZ2b1yr58qS4uaYMxhIWIklkot0lpMc75SkSQPSDIeIi979qIiKYyA/PaV1acfFNC+Jpj+ogvFzZV9rlaYno+DjkuIz1gj34bir8Vn83roZxUIzIzrn/kaDWhyeBY4UkaySki8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(39860400002)(136003)(376002)(396003)(107886003)(478600001)(186003)(316002)(7696005)(53546011)(38100700002)(33656002)(86362001)(26005)(122000001)(9686003)(66556008)(66446008)(5660300002)(2906002)(52536014)(6506007)(66476007)(64756008)(8676002)(76116006)(71200400001)(966005)(83380400001)(110136005)(66946007)(4326008)(55016002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?tNBO96skkQ0rJ8hCiXwk1FdG9lxz5ArMo2Bs7QXJQOZQ15KqOa/JzGg1vMGZ?=
 =?us-ascii?Q?A5vRKoHNN984QkY13uvuHuylI7i+c2P5jhLtkTo9R+U4stnOUrErVMpZq+o4?=
 =?us-ascii?Q?GXwX02mMZVzui+9VxelWzcsIRCJkJqPIDsBLZQL4rFE/mrQZiRlZU6tgVQVr?=
 =?us-ascii?Q?xUna28w1DH7tMMQAoZV+xmuG6nn5lJ+hnuyf0JBzLsnVTAwvga5n3VizCnAy?=
 =?us-ascii?Q?S3EUV6zlLmDX/FHjWxWt/Lv/4ZmMq4fidKsTnjW8Gpu9zjpe5fQJK3B66JWy?=
 =?us-ascii?Q?BEE9MogDros1CJYoUNP5ftggxL2VJA9brL/Fc4Mex9s4EnMHQ+oFFBWKK5wu?=
 =?us-ascii?Q?R/bThU2TFGwFmDgMhM+VPYuCYxdqthNn/b/thTduNIOn1hOYVQE2OW2Ev1Cf?=
 =?us-ascii?Q?hXU6EVYU4FmkKbuyi0ZpRBgcU1q10D7pr8cnwrTYrhsz6RZfETKiy3EvIQu2?=
 =?us-ascii?Q?jLfVuWcJi9VXXZS2s5QSOUdVstHYMXKLf/GMH2j9TbpBT7q7nIQ5OMafB1i3?=
 =?us-ascii?Q?P4h8VgOOPf0ST60lZ6VZcIZJct7KMI7wkhT791Hg9S5+o9yIJ1y9uZSSDbxo?=
 =?us-ascii?Q?z4SIWUoTX6BawLWOeq1DbUODUY+DXjZVQ+oxhhXAurWz/+aJRXJrn5EEVXAn?=
 =?us-ascii?Q?x3xdORHpmMe9C8ZQZuNfR8y9uC140Ytxx+OQxydAihE1RwpeQrVGbW9NqSUU?=
 =?us-ascii?Q?MtizhiD47jAcQUiwG3NJQUgkYaW1QoTM+lHpjYl2qbKuBfiJBFUyTnRl/l1c?=
 =?us-ascii?Q?XDx0DddHbgXzqxcN7IsBON1GnveY8TLkfaydI5ogkq0EpW/GKCm+5XDZ4imQ?=
 =?us-ascii?Q?GacUcL+l78WFd54eTIaVGWe58WzOsUjTpzJf1tVTf/FP4E1NMpnEN66WBDLX?=
 =?us-ascii?Q?qM+ro5EwkqqorkdB/lCkjbUKmODNjhn+az75s4hCtUF2AQcXAXjDb5zp3hLd?=
 =?us-ascii?Q?yRU2XDZZKmHQGn8e71OM2Ak5EypzcK2NzKMbwWSRTWRZYeSBNGJCMR8cuFXC?=
 =?us-ascii?Q?opmuhQiHWaXP+2OfDtiF6jyCJSq3CEnMvoiGBm2VbdDRjO7J3hhjhIy8iWbn?=
 =?us-ascii?Q?xnQU4fw916IfwpjB1v+8b0ECVylpRS/vgw7LF3FYnf1kj1RDMJNqYVOk/sMY?=
 =?us-ascii?Q?CfA5Buy49KRq4hBAlG2y6HS0uKvKNNL5Ts88mh4jO4T+l50+eMmCOPdE4VSR?=
 =?us-ascii?Q?qPVe5y3iuzTt4iODHLNaEC0LQZn2fTrpc2bkNwpYwMG10NXjyWcfeyoMxEaX?=
 =?us-ascii?Q?70vLTyQA81rm1/+Wm7NyWHO/XmprZSmSO88a11bHLW+Uy3pX0LekMRc4wci0?=
 =?us-ascii?Q?iheSDpNkiDKt/zeXIp3ww6uQ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b56abb54-4b99-4f6f-ae92-08d90b25c7e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2021 15:45:14.4002 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m/OoK/8x4QjGDZwQ7ta7DtzZUlFn2VRq1PTwiqvEbv/eyYlhpDTU+LzmGYdl+S98bEDiYnkr+Ura1Ffr8voU5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1667
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igb: Add counter to i21x
 doublecheck
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
Cc: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Grzegorz Siwik
> Sent: Thursday, April 29, 2021 21:29
> To: intel-wired-lan@lists.osuosl.org
> Cc: Siwik, Grzegorz <grzegorz.siwik@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] igb: Add counter to i21x doublecheck
> 
> Add failed_counter to i21x_doublecheck(). There is possibility that
> loop will never end.
> With this patch the loop will stop after maximum 3 retries
> to write to MTA_REGISTER
> 
> Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
> ---
>  drivers/net/ethernet/intel/igb/e1000_mac.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/e1000_mac.c b/drivers/net/ethernet/intel/igb/e1000_mac.c
> index e63ee3c..3cb7e55 100644
> --- a/drivers/net/ethernet/intel/igb/e1000_mac.c
> +++ b/drivers/net/ethernet/intel/igb/e1000_mac.c
> @@ -492,6 +492,8 @@ static u32 igb_hash_mc_addr(struct e1000_hw *hw, u8 *mc_addr)
>   **/
>  static void igb_i21x_hw_doublecheck(struct e1000_hw *hw)
>  {
> +	const unsigned int failed_cnt_max = 3;
> +	unsigned int failed_cnt = 0;
>  	bool is_failed;
>  	int i;
> 
> @@ -502,10 +504,14 @@ static void igb_i21x_hw_doublecheck(struct e1000_hw *hw)
>  				is_failed = true;
>  				array_wr32(E1000_MTA, i, hw->mac.mta_shadow[i]);
>  				wrfl();
> -				break;
>  			}
>  		}
> -	} while (is_failed);
> +		if (is_failed)
> +			++failed_cnt;
> +	} while (is_failed && failed_cnt < failed_cnt_max);
> +
> +	if (failed_cnt >= failed_cnt_max)
> +		hw_dbg("Failed to update MTA_REGISTER, too many retries");
>  }
> 

May be simple as : - )

int count = 3;



                if (is_failed && --count == 0) {
                        hw_dbg("Failed to update MTA_REGISTER, too many retries");
                        break;
                }
        } while (is_failed);


>  /**
> --
> 1.8.3.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
