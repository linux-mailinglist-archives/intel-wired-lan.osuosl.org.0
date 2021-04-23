Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D205369B40
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 22:24:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B417843E5;
	Fri, 23 Apr 2021 20:24:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VaTtitONQdv2; Fri, 23 Apr 2021 20:24:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25FAA843CC;
	Fri, 23 Apr 2021 20:24:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1B71A1BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 20:24:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9C1F4606B3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 20:24:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yje5pS6gck5a for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Apr 2021 20:24:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C3054605F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 20:24:15 +0000 (UTC)
IronPort-SDR: 0MLm12DpU7vPW3OB1xMaJp3sjO8RRaQJJ9Xu3wGHE3QI8vrHBXuQK6xH04EKOqEt+oy5pIQI23
 JsL36xA1E3tA==
X-IronPort-AV: E=McAfee;i="6200,9189,9963"; a="196187644"
X-IronPort-AV: E=Sophos;i="5.82,246,1613462400"; d="scan'208";a="196187644"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2021 13:24:14 -0700
IronPort-SDR: 77vnSLW31tgLop8uw7wmew/vseWy6yGeZJp/WgYtz7EFVU1JsQQ/xeeRBEG+wXBfh7NINj9yDu
 MDvcrW8AYnjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,246,1613462400"; d="scan'208";a="453675301"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Apr 2021 13:24:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 23 Apr 2021 13:24:13 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 23 Apr 2021 13:24:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 23 Apr 2021 13:24:13 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 23 Apr 2021 13:24:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ICx4tXgGOvePMme/yM5yyBjkiIwmQbrvSrEBFecS3pZQs2Lu3i+XZ0h+1nNJxVWEqiKbmqQ1uaaikKA/9l7E2ySCcGOFg0hOzGd+EFWjvmRzXdcd5X5v7JNE3Koxxag9bVkmcj4FZ2kGUxkUqs8pqOnLN7VqQIGClrpKZobT1ePzzUbs9knMN9qL3X9RyzhctgcsekH3XQMTIUTAfr8J0zOB6yhcgRXmsAFqctIZ+pCmMalvjqKYjDUCkkoeYy/pUS/5bJU6Lt1fjsdQeoXnqqRQV+vcFJ7Ol4GWOsemUmyVAWsS5bGyOThFbpHvr0pKQlswGqQ2Su42IgLN5Cqnww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8SgYW6+SKCqZa1FErECdQjEQ3JdT1TLXz7xZsMKa6gc=;
 b=g+qjJd2Mndw5d4gqV479ln1HuRpXuV6dkvEK7HLCbMdnkYpepaOWSf9RGdu/a2KHvbsAXu1KX0PPw+/WdFeyS6BThR17JfUsEKumhHu2HyezSrvAEsLwdKLVBYkK7REnYZ0fkI0qw6I+FdY6hJpZGExqQy7Lf0lJ1GN8cQAg/u5y946pw1072lffUZzAsQp+qkmNICJqxSv3c3XQDoe8Ysj9Sp2bmmNEvDMHPqUThJib7+lzN0F+LuzOwo+torg1BtjVPLpwkhwK0fg/5hV72+ckdaiGrQdvVcN+lKev97XopIyHWkHajPvJx7G2mGdNzqZymvJtymgaTzYZw5Q+bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8SgYW6+SKCqZa1FErECdQjEQ3JdT1TLXz7xZsMKa6gc=;
 b=t3IOmZKDb2PifM95Bnjhy4piClp/+oAflESRiCfjoQz8LWQxCFaS+cxAjt6OOAP5SYzxgPypMsZrz37bu3yz8U3BMGsrCeNLQ7jC1FWhAg8j189KucS7zY3rJOXvCB3tpcSTGiJyPhLIGRrmbU5PAf/YlTFE1UdhFrNhTxO632Q=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4653.namprd11.prod.outlook.com (2603:10b6:806:94::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.19; Fri, 23 Apr
 2021 20:24:11 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c%6]) with mapi id 15.20.4042.024; Fri, 23 Apr 2021
 20:24:11 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Thread-Topic: [PATCH net-next] ice: Enable configuration of number of qps per
 VF via devlink
Thread-Index: AQHXN/uWdQJWPNQhd0mD/sm2GF06f6rCjUUA
Date: Fri, 23 Apr 2021 20:24:11 +0000
Message-ID: <0f3220d28f6289bfef2e90aa8285f1c678695a54.camel@intel.com>
References: <20210423044603.1391-1-sridhar.samudrala@intel.com>
In-Reply-To: <20210423044603.1391-1-sridhar.samudrala@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3914e41f-79d9-4db2-bed5-08d90695c1af
x-ms-traffictypediagnostic: SA0PR11MB4653:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB46539833ADC6C473DAE19C6AC6459@SA0PR11MB4653.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N0o5omboTI9+c1jISkDoqENSt3aXf3b0Hwean135ygEfYbFYDxH9jSKUWwytl6F55Lt2+ccv9+IX4mpJ9FomyQRWaZuT/f/GltD7HApiaP2WHcV8Dv8clzzLCbPpUDWn+VtaWkRuFnxdIgYPN913x82NkgA5OdyogKAROAF0Y0YFXl8q11gSYtbLOMps7fL4tHTThSL85Zr72varjbtZ8qnRKg9ZCNQu3xY0JnZIMIQyzEawZQQyC8bV6P54WUVQuSbcsdmgcjDWaVZXFKNpDYgc+Xl665IzkxOjd1KYRmf+zXY2Ia3UhE/6+kdbLQA3Ej1P9cy5lB8w/mTFHWouN1t2ubVN4XseViEXZ6yelEy3DXCSnslA14haHbJNkb3Ii0PN+zCXqUXIe499oZUB6hPK1PllUR5M5uKfZz/VGK2ij8r/b3rNF+vOnuvJL+1lcWyK3XWzhIZdqN7j0QKoDDYMXPfwLfLnPSm3r0i9gDhbrBXMrDmer6KC4WrpbSROGIF0ZtnlfC6+igz6gyJWip6PZC29lyV+xT9CNffgdrFcma73gazHQQfex8SMuXgukEuKFZhD8lN6veDuONZIxq1T1Yt8TVoshr0C0NYw91ugJUx2jn3GikpMfkxK4NCOHEX5utbQJNOIZkYFkEph7Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(376002)(39860400002)(396003)(136003)(6486002)(316002)(5660300002)(8936002)(8676002)(86362001)(186003)(478600001)(2616005)(6636002)(110136005)(6512007)(91956017)(83380400001)(26005)(66556008)(38100700002)(66446008)(71200400001)(2906002)(76116006)(6506007)(66476007)(122000001)(66946007)(36756003)(64756008)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?elBUTEZDQm4zNVRoK3NJbG9BUFIxdzNySjVpZzRVaXZ6ODRTSGdoOE5Da1Jh?=
 =?utf-8?B?bEVnU0QwcjMyVHZnbUJRQWk4U1VndG5LNUkwZ2ppRWh1djZwb3h6N1h2dlg1?=
 =?utf-8?B?WU4xQWt2YUhXR0dUcThBb1N0YzZNaFpZSHZURUFXN1ROakxvZUM5ZVR3eGx3?=
 =?utf-8?B?MWhEVXR6RkxQUVdEaHZvaVAzbCtwZXdXTUhidnFOUGduQ1NIVTlCdXFrSVZi?=
 =?utf-8?B?RjdCWlkySi8wZldKUmhyQzQxT3JwMXNxblhKbHd2aEdpc0c0U1VTcTNEQ3NX?=
 =?utf-8?B?YnpGL3M5anRQNGwrd0JsK21BS1hqYTRxa2c1OVV0N1A2Z29sTWkzS085RXFP?=
 =?utf-8?B?d3A4OVhJR3VzbTh5Wjk5Z2lKWGdvd1VVRThyNHJFcUhtVTk4OGJoL3l2NkUz?=
 =?utf-8?B?R09wWUQrdUUxY1hoYjY3V3RxYk4vaEM0WXNpaXV4TUhlWS85MzNjbXd6YlBp?=
 =?utf-8?B?QW00YkFzZXg5SG53YjhwdEl3d2Z0djFqQnVacGZXNVRBbGVpSnlCWVJ3Qy9m?=
 =?utf-8?B?SE95TGlaNVNRWUVLNmdkeWoxbThZRXduSDNVaURFMkZ5SlJUVTJHeWs3MG0z?=
 =?utf-8?B?ZGtVOEl0cXNMVHN0MXprSGpTNW16TlB4T1V1c00vbElFMzUrbjFuTWwxby9R?=
 =?utf-8?B?SERiTGthTnV3bFp1RXFTbG1wUE1Nbk9UeUw3Y21TSzgxbFNGZmpEYTk5Ulpx?=
 =?utf-8?B?ekcxYWlkbzlXejNBTmZGUER6Nzd5eVN6d2ZGSWZFV2lsLzFtTEg5YlBLTzRy?=
 =?utf-8?B?ZW1Tajh3WHpuQzdWaXVhV0R0dDZDSXJGd21WRW1OaWFiblFuczkxWHFzQ0h2?=
 =?utf-8?B?UUZBUDBJODBHYkpFUVNaZTRHMWhBUDNoOSthZFhZUlZodXVtcVowUjBYbWJC?=
 =?utf-8?B?T1RzM2ZHV1NLZUdWTEFBTU1iVFgwVE1pcXljbmpJMnd0cUd4b3NINUlvMDJk?=
 =?utf-8?B?MC9Ubi9GbEMzYVB0bFJwK1NpMEhsL2k0bHFnQnJEbTQzVHptTHlxaUFncTh4?=
 =?utf-8?B?R1ZjcW04clc2SjNJdGlaZGVpY2tlWE43SGs1b25FNlZVNmtGY1hJR2hlSGlh?=
 =?utf-8?B?SmdOMFFuM0pCOElrckVuOUUySXo1Q1NSZXMvSml6eGpudWo3RkNNM25vWUY2?=
 =?utf-8?B?aTYvMG1NMExWZElBVjdjRzdxWFFMYjZaR1NRWWJMenN6U3pZbjZUQytiZmUr?=
 =?utf-8?B?WUdXVkszRFVSa2pBeC9VMnozK1VVeFlzQVJZK2MzeVk1NHgvQ3JEYW5tZkF6?=
 =?utf-8?B?R0NFMWViMUNRTTVhNEZ1N3hsR3lHb3RWYzAyaVdMejdNYzg5VzNYR3RJTmxj?=
 =?utf-8?B?YXVDWW0xeFJ0NHJyNVhzSk41NUhRaFY2d2dnZFgzbFBxL0N4M1h4TmRpM21Q?=
 =?utf-8?B?TERnUDBOOU1xWjY1L1NvWW9UZDZSRUtqRmpNWFp0V1ZLVDhQd1hpTmtEb0o2?=
 =?utf-8?B?UVJKUGJieW5kclZqR2ZaZ0piQzRzajRvajhXS0VaSTRzdFZYZnRvTExRT3FI?=
 =?utf-8?B?Wnl2Vit3OUdBa2l1ZjRXYVJnRFpDazdjN3FYU3hDV25CMGl6RWhZekdxOU1y?=
 =?utf-8?B?NkZaQ1lNWThmY0xJaXhhZnkzS2YrdXErNnUrVTcyb0YzVHlzQVczdzZKdU9B?=
 =?utf-8?B?S2tYa3dhRnBVZFVKTHlGZXZ4NUU5dWF6V3ovRHhici9ZMjl1Q3RVSTNzcTlG?=
 =?utf-8?B?SUFicGhNN2tMbnRyQTZxNGE1TEVUdjMrMEZqeGlzMFU4cGM4TnlCRTcvd2k4?=
 =?utf-8?B?U1BLT3NFRmZCd2NwR3dGYVJBeDMrTThMZnRKZXgyU1NvYUduYkhEWVI2UmpC?=
 =?utf-8?B?YmpFcUg4N0Y2ZnE0Y0tiUT09?=
Content-ID: <B0420C878143D64BA6936EBA358831BE@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3914e41f-79d9-4db2-bed5-08d90695c1af
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2021 20:24:11.8000 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IohzfYT3vU8sPzkAF06w9sHsM6ut0fvgNkmu81yVQuvQNqlgp9QDE32OhXAzONPlHhNsq8UsrhPP2UoxQ8/UbTJlFajm3XKXsXCt0YjqmfQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4653
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Enable configuration of
 number of qps per VF via devlink
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

On Thu, 2021-04-22 at 21:46 -0700, Sridhar Samudrala wrote:

<snip>

> +/**
> + * ice_devlink_num_qps_per_vf_validate - Validate the number of qps
> per vf
> + * @devlink: pointer to the devlink instance
> + * @id: the parameter ID to validate
> + * @ctx: context to return the parameter value
> + * @extack: netlink extended ACK structure
> + *
> + * Check that the value passed is less than the max qps allowed for
> a VF and
> + * no VFs are created yet.
> + * Returns: zero on success, or an error code on failure and extack
> with a
> + * reason for failure.
> + */
> +static int
> +ice_devlink_num_qps_per_vf_validate(struct devlink *devlink, u32 id,
> +				    union devlink_param_value val,
> +				    struct netlink_ext_ack *extack)

I believe you changed a parameter, but forgot to update the kdoc:

drivers/net/ethernet/intel/ice/ice_devlink.c:526: warning: Function
parameter or member 'val' not described in
'ice_devlink_num_qps_per_vf_validate'
drivers/net/ethernet/intel/ice/ice_devlink.c:526: warning: Excess
function parameter 'ctx' description in
'ice_devlink_num_qps_per_vf_validate'

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
