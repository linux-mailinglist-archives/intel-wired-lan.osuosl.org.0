Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D2D3183AD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Feb 2021 03:47:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 743926F49E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Feb 2021 02:47:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 86UwZL8nDoEY for <lists+intel-wired-lan@lfdr.de>;
	Thu, 11 Feb 2021 02:47:15 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id B91626F532; Thu, 11 Feb 2021 02:47:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D0896F502;
	Thu, 11 Feb 2021 02:47:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D9D141BF83C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 02:46:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D31CB8718C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 02:46:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EbiDsvFCYbua for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Feb 2021 02:46:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A862F87144
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 02:46:57 +0000 (UTC)
IronPort-SDR: 4zBmsHF2ZzVrssTm/mPdhGy+0J2XSQP/2MdqzRtmJODvUjHgTEk1Ftkug4A2gVfeC6OJEYoRdD
 +qbtTBGIDlng==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="246251970"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="246251970"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 18:46:56 -0800
IronPort-SDR: MSloyuOlRDGsHAA13jGJIxKlP+33cpLSzV0zRrXOL9LdSqUqLH2LiI7FCipyh14cmCG0f2Xe10
 LbqMfpa+bWhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="380420371"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 10 Feb 2021 18:46:56 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Feb 2021 18:46:56 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 10 Feb 2021 18:46:56 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 10 Feb 2021 18:46:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QG5dN/Zkhux8lFrjwRNlGwaPZm0U9AwLx93K9f1Zm5jIiHep31LGm05vpnaIrgv4ZKWTNjF4BRA/hgj8spm1k5YVP2/m8g4Yd8tQivQ7JIG5XvzKtsBNvXEM07yfkQz0NnQf3kwhHMXrfbzGNtT7+uT/YHhEUukV6zli03l3xWPa/VrIT14so1IUOxCs6ituZMyKNXEO4tC/w90mHA+vCd3CrjAA4RE57A1/2E/aJXRUNKCYYC23v0BCtHxT6v4T647gl3om2XKbdBh2Oqf949/AEsybkx2iIdwWj7hOXx2b7kOAk/5V8/I4i838wsC0nVNJ0zOOM17x0dDNbSyj8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mK4YGQLPqNiPQW1xJiyRYjVJlQ9TI7xG75nOFBdme5c=;
 b=d+6LNSnJEMSX8R7CaZRfxnKTOtw66ypDZ+H1csvycWUeHymQoaNNWRoCIutcRDuqx4QXV5CS7186+dmjre/VWLp4vBBK8DWjSrJyrLZhBRD6GKRAY8CXj2OwGKBpsmqZN3RgZu5rAKlq8oE11QYzD19oxQqC7Rsz+G0wjuZvHp8++oNR70Ws9FbqDEwC18m8QlrfG4sw0FxaykMA61q3dBYsvdVgbingf4xJimUzSS3KN6G+U/vtDSvmyTnbByn4GLELy3uh1FNOU+3YUWAb5vkL4fZr/oSH0px7BvhcpKTMCKvQgy47cjDlTzAfU74T6OXel6GXTvZLGmxX9gWzog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mK4YGQLPqNiPQW1xJiyRYjVJlQ9TI7xG75nOFBdme5c=;
 b=NQJpYNtkFk6zicoWnAITjDHZn+z76gax/NOYIdcmwv9wo0XBSamgPUfngYU0bTOwCUrFkV6I9vIARa0adRFiAH5CPZy4kVRRJulrJA6Zngh0BVK5Z1rHRv2ibH7VTSjVpbz8NM+jvgsZ/r9S8MpCfSKc+pKVzQdOe8h6JY3noQg=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2750.namprd11.prod.outlook.com (2603:10b6:805:54::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.28; Thu, 11 Feb
 2021 02:46:53 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e%6]) with mapi id 15.20.3846.027; Thu, 11 Feb 2021
 02:46:53 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix not showing opcode
 msg on unsuccessful VF MAC change
Thread-Index: AQHW/t2ieYs6AcVfv0K5uONtf6vm+qpSQpIA
Date: Thu, 11 Feb 2021 02:46:53 +0000
Message-ID: <af49217051d461d29142a7de7c1232eda735db3b.camel@intel.com>
References: <20210209121745.8840-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210209121745.8840-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df8fbb7d-bf01-4805-cd9b-08d8ce374a33
x-ms-traffictypediagnostic: SN6PR11MB2750:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB27507A7AF686571E2C929597C68C9@SN6PR11MB2750.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xxAa6+LhidCt866RCONuZsvu+J5GQ5cGmr6zC5tpCR50kDybm+i7XN5lwlwx4g5R+kgBBZo9QXsfGEvSIUaPR9I4XHC8mywwJJjMtsjRaxIRfOgL+KL1Emi50nkd3f7yGxaZeQpZTL6fNC9fTItK6XMo/JBqTZ2fUDCO3JEyeiniYsuki69DaMBwrH0Z1bBXgF6XGybBPUDKqF7eapVEPeOy2l+d5qKuyYWvAaSBNMXg5wkcfLUjtEzQU7UjGETqcYlV76Sxx4BGtysx1jGqEuux++Kum5gXkSUT6lOvy0X5ELtE5AWxCuckFCXC1y9NPPnex6KbfPirf6S9ocQFqcIihruCECivE+NM/NA84Vok/ZIGHgL6WCbGfqIrHvOER8/7w/6ewY6y1y0YifgMhhINhN+809SaBY99A3DWsgXtI4ywWy2YJGDdlCGT4JnFmZUmIItpzC67HXIQYGPcWvk+Tif1AioLgyp4UIeB3DMsug/qI40O9Wsa1giDpakwLCJzQaSMG8lRVrnI7ySa8usNO5iCU0/Wz9VFbiyan2vAqrCD3oNK0LT4XokcHBPb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39860400002)(346002)(396003)(136003)(366004)(71200400001)(8676002)(2906002)(6506007)(6636002)(110136005)(66446008)(64756008)(66556008)(66476007)(83380400001)(76116006)(91956017)(2616005)(5660300002)(26005)(86362001)(478600001)(66946007)(8936002)(6486002)(6512007)(316002)(186003)(36756003)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?aUFOV3EyMCtGS1pBSzBDcE5NdkFpKzY2R1dKRFFTamF2MytJQitzUG93bURv?=
 =?utf-8?B?UWZqRmdwNDJublh3eHI3WmxlTDNIa0NRQUkvYUthSTRxTUlUQ3dmcVFubVBa?=
 =?utf-8?B?b3ZCYkZ2eDA3YTNiNEp5MzQyNlA5clh0WS95MUkrUlBzSGl5VWhHZVBYb09I?=
 =?utf-8?B?eUNPNURZU0Zsc3Zid08wdXgvckxmMStreWtzZkltR2lUZDArTVZlVWZWbHRV?=
 =?utf-8?B?KzV3a1lxbXdjdVR3Z0hPVkVibVFsTm51a3lnVDZaMkZSV3h6RTExQXpEYWtK?=
 =?utf-8?B?MGlzb1lGZzFreWRoSEszQmFMNUYra0U3SUI3SjlZSFNxRHEwd1ZkZGtxVjNL?=
 =?utf-8?B?eUFoREVLRmRzckJPTmtJb0xGazk0NlYzUVFyL2oyaGhVSlYwc1ZmaDlQaCtQ?=
 =?utf-8?B?bzQ1UlVVUlN1Nlg4K2E5ZlFkbmNUNHczQnBJT2RacVFMYVNmSzNZbWg2aGpz?=
 =?utf-8?B?OVZjL0dLTTZ3OHg3eTg2K3dPT1A4MTJOY2dkbU1aVVV3N1B1dU51RldKWXNN?=
 =?utf-8?B?VllJY2tVZmZrZCtnWGpPYStWNG1xUllEZkZZcVp4a1QyMXlIcEpQREVyRURH?=
 =?utf-8?B?YktBNjRrazgxVTF1U0dyUm9COWVoZWFpZzEvQWZGNFpSVGlkZlNZbVhFaVNT?=
 =?utf-8?B?RkpKYmg1bFJqaUFveEJzVGVaVndNZFhMS3ZySUtvTG8rMU9ZNC8yMEhFaVZ0?=
 =?utf-8?B?SHdWTDk5a1hENFpMZUdUTER1MndESkRscTJvZTJIeDkxWlE5eUV4WkhBTlB0?=
 =?utf-8?B?SGRlQzVZUmNRbCtxSGN2Ymh4RE5zMVlsVVMvQW5ocnBDWjBMSWRRVzM4Z1Zr?=
 =?utf-8?B?WWJzZmpRYWliVzN2a0pjakJsaU9YZGN1anBucTRyRzFibG5ZMUpyV3E3RlRK?=
 =?utf-8?B?dkZ5MW5ZY2MxTXEzSzAzK1pGQ0taK3QzYkRuaitrNUMrclYwcmEvV2tIV2Y1?=
 =?utf-8?B?MFlrRmg2MGcxUEpaQnNnTE1xSHlBWHhtczZOei9jVG9tYXZKc0VodStpVlE3?=
 =?utf-8?B?SkJURzJlWk8zTGtYZjdkbGZxbWt0Z2JzQUpHSWxYSEJadXhUdG9BcG5TaCsz?=
 =?utf-8?B?TSsrQVkvWFVpQzZXRnlNNXB3bTZLT01DdHY2TWdGWU95NGtyWjhyY2czNjEz?=
 =?utf-8?B?Nkp6ZENXNEFtaDJTUkc3OVpVVWpHd3hCYXkvL3JMOTIyR0JtSmhxUlpQR0hx?=
 =?utf-8?B?QWllbUFYV3Y3cDB5cDJXL25pVEtCZGtSRWNrR2RwZWN3ZXNqdFdTUHZPOC9X?=
 =?utf-8?B?WVFJQXpLL1gzK0RjbE9SYy9mZEFnR0NkcTYwWkxhSndKZURxSEhvRlFrdndL?=
 =?utf-8?B?Q2F1dFAvbEJjcDRWenozRlNwY0tSTGcram5WdTN6MXhRa2NZazV2OFlTVExx?=
 =?utf-8?B?ZEJ2YkFJc0g2RUlSbjdCRDhjMUlsVk10anlZbnNvSlBQNlVjT1ptWTQyOWZ1?=
 =?utf-8?B?OXkyNDFMLy84cERqSkJ0eW8xNmJBQmZKRkprL1EzMHM4U2tPVHZpOGsvTGND?=
 =?utf-8?B?VGZQYzVPYmFUNkVESDNZeSs4M0YxQTRQUHVWUVFuVm1UZGp3VU5sMThaYk9v?=
 =?utf-8?B?Sm1ueFFQY0xMSFlrbTBYeDVOWkhQbjVXTXk3OGdZTTNCZDFKVit1Z2F2dWZ0?=
 =?utf-8?B?MTdxTWpRTEUvaWxaR2crMUQydmlzZHE0RUNEK1djUk5IdjU5bVluTnJ2YWpK?=
 =?utf-8?B?a1l2WWtFWW9wRXBjNlhXWnpIVkU2SXVkeDE2K0ZudittKysvNkxjZVcvSG5z?=
 =?utf-8?B?RXkyY1FpTkF2anAvTTFpdUpoMDczKzZ4QTg0NE9PNk1xQWs5Wm9HSEdEVkFP?=
 =?utf-8?B?YVN2RWVLYnhSMVdMbmdZQT09?=
Content-ID: <EEB4A0B63372824DA3C038DCA6D940B8@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df8fbb7d-bf01-4805-cd9b-08d8ce374a33
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2021 02:46:53.4928 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dH4rw8/tzqlH2fvYLKCECQGAx8jQkMva4bEHPLZ5s2j3vKUWHy2GuF7VQERFqKDA6iWev5jCXugSqi6OhwddA2URCOowimJUzWUxGGKpT80=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2750
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix not showing opcode
 msg on unsuccessful VF MAC change
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

On Tue, 2021-02-09 at 12:17 +0000, Mateusz Palczewski wrote:
> Hide i40e opcode information sent during response to VF in case when
> untrusted VF tried to change MAC on the VF interface.

The title and description seem to contradict.
"Fix not showing opcode" and "Hide i40e opcode information"

> This is implemented by adding an additional parameter 'hide' to the
> response sent to VF function that hides the display of error
> information, but forwards the error code to VF.
> 
> Previously it was not possible to send response with some error code
> to VF without displaying opcode information.
> 
> Fixes: 5c3c48ac6bf5("i40e:implement virtual device interface")

nit: There's a missing space
Fixes: 5c3c48ac6bf5("i40e: implement virtual device interface")

It's not clear to me what the bug is.

> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Reviewed-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 44 +++++++++++++++
> ----
>  1 file changed, 35 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index b40ce62..b47159a 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -1792,17 +1792,18 @@ sriov_configure_out:
>  /***********************virtual channel routines******************/
>  
>  /**
> - * i40e_vc_send_msg_to_vf
> + * i40e_vc_send_msg_to_vf_ex
>   * @vf: pointer to the VF info
>   * @v_opcode: virtual channel opcode
>   * @v_retval: virtual channel return value
>   * @msg: pointer to the msg buffer
>   * @msglen: msg length
> - *
> + * @is_quiet: true for not printing unsuccessful return values,
> false otherwise
>   * send msg to VF
>   **/
> -static int i40e_vc_send_msg_to_vf(struct i40e_vf *vf, u32 v_opcode,
> -				  u32 v_retval, u8 *msg, u16 msglen)
> +static int i40e_vc_send_msg_to_vf_ex(struct i40e_vf *vf, u32
> v_opcode,
> +				     u32 v_retval, u8 *msg, u16 msglen,
> +				     bool is_quiet)
>  {
>  	struct i40e_pf *pf;
>  	struct i40e_hw *hw;
> @@ -1818,7 +1819,7 @@ static int i40e_vc_send_msg_to_vf(struct
> i40e_vf *vf, u32 v_opcode,
>  	abs_vf_id = vf->vf_id + hw->func_caps.vf_base_id;
>  
>  	/* single place to detect unsuccessful return values */
> -	if (v_retval) {
> +	if (v_retval && !is_quiet) {
>  		vf->num_invalid_msgs++;
>  		dev_info(&pf->pdev->dev, "VF %d failed opcode %d,
> retval: %d\n",
>  			 vf->vf_id, v_opcode, v_retval);
> @@ -1848,6 +1849,23 @@ static int i40e_vc_send_msg_to_vf(struct
> i40e_vf *vf, u32 v_opcode,
>  	return 0;
>  }
>  
> +/**
> + * i40e_vc_send_msg_to_vf
> + * @vf: pointer to the VF info
> + * @v_opcode: virtual channel opcode
> + * @v_retval: virtual channel return value
> + * @msg: pointer to the msg buffer
> + * @msglen: msg length
> + *
> + * send msg to VF
> + **/
> +static int i40e_vc_send_msg_to_vf(struct i40e_vf *vf, u32 v_opcode,
> +				  u32 v_retval, u8 *msg, u16 msglen)
> +{
> +	return i40e_vc_send_msg_to_vf_ex(vf, v_opcode, v_retval,
> +					 msg, msglen, false);
> +}
> +
>  /**
>   * i40e_vc_send_resp_to_vf
>   * @vf: pointer to the VF info
> @@ -2591,6 +2609,7 @@ error_param:
>   * i40e_check_vf_permission
>   * @vf: pointer to the VF info
>   * @al: MAC address list from virtchnl
> + * @is_quiet: set true for printing msg without opcode info, false
> otherwise
>   *
>   * Check that the given list of MAC addresses is allowed. Will
> return -EPERM
>   * if any address in the list is not valid. Checks the following
> conditions:
> @@ -2605,13 +2624,18 @@ error_param:
>   * addresses might not be accurate.
>   **/
>  static inline int i40e_check_vf_permission(struct i40e_vf *vf,
> -					   struct
> virtchnl_ether_addr_list *al)
> +					   struct
> virtchnl_ether_addr_list *al,
> +					   bool *is_quiet)
>  {
>  	struct i40e_pf *pf = vf->pf;
>  	struct i40e_vsi *vsi = pf->vsi[vf->lan_vsi_idx];
>  	int mac2add_cnt = 0;
>  	int i;
>  
> +	if (!is_quiet)
> +		return -EINVAL;
> +
> +	*is_quiet = false;
>  	for (i = 0; i < al->num_elements; i++) {
>  		struct i40e_mac_filter *f;
>  		u8 *addr = al->list[i].addr;
> @@ -2635,6 +2659,7 @@ static inline int
> i40e_check_vf_permission(struct i40e_vf *vf,
>  		    !ether_addr_equal(addr, vf->default_lan_addr.addr)) 
> {
>  			dev_err(&pf->pdev->dev,
>  				"VF attempting to override
> administratively set MAC address, bring down and up the VF interface
> to resume normal operation\n");
> +			*is_quiet = true;
>  			return -EPERM;
>  		}
>  
> @@ -2671,6 +2696,7 @@ static int i40e_vc_add_mac_addr_msg(struct
> i40e_vf *vf, u8 *msg)
>  	    (struct virtchnl_ether_addr_list *)msg;
>  	struct i40e_pf *pf = vf->pf;
>  	struct i40e_vsi *vsi = NULL;
> +	bool is_quiet = false;
>  	i40e_status ret = 0;
>  	int i;
>  
> @@ -2687,7 +2713,7 @@ static int i40e_vc_add_mac_addr_msg(struct
> i40e_vf *vf, u8 *msg)
>  	 */
>  	spin_lock_bh(&vsi->mac_filter_hash_lock);
>  
> -	ret = i40e_check_vf_permission(vf, al);
> +	ret = i40e_check_vf_permission(vf, al, &is_quiet);
>  	if (ret) {
>  		spin_unlock_bh(&vsi->mac_filter_hash_lock);
>  		goto error_param;
> @@ -2725,8 +2751,8 @@ static int i40e_vc_add_mac_addr_msg(struct
> i40e_vf *vf, u8 *msg)
>  
>  error_param:
>  	/* send the response to the VF */
> -	return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_ADD_ETH_ADDR,
> -				       ret);
> +	return i40e_vc_send_msg_to_vf_ex(vf, VIRTCHNL_OP_ADD_ETH_ADDR,
> +				       ret, NULL, 0, is_quiet);
>  }
>  
>  /**
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
