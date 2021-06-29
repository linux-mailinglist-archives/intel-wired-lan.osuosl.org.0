Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B8D3B79B1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jun 2021 23:07:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA59A825C7;
	Tue, 29 Jun 2021 21:07:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PNhsB_cyIR7F; Tue, 29 Jun 2021 21:07:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C57A0826DF;
	Tue, 29 Jun 2021 21:07:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 67CD11BF573
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 21:07:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6340281D47
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 21:07:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m56_5lJaYt64 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jun 2021 21:07:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CA08083A65
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 21:07:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="208279161"
X-IronPort-AV: E=Sophos;i="5.83,310,1616482800"; d="scan'208";a="208279161"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 14:07:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,310,1616482800"; d="scan'208";a="643857650"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 29 Jun 2021 14:07:24 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 29 Jun 2021 14:07:24 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 29 Jun 2021 14:07:23 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 29 Jun 2021 14:07:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SBcD0WSL7M/+OeSio5V8yf/kRWfMiBV/3Ssg0wzC+CPisOUZXgGOptR018ryMeykGRZdHFymucMtSgja47xVm+a95V4cTvw1lD05dVs68H+O4fJ9XcWaf5EXmxs/2ttBiC1m7cO3sDQLnIBXm+8QMMATdH8vkRILwxXQXVVcqkIGMH379PfDHURDzndIf4G4wIOBwY9XYxkB0opwCREMhIN2WEJGFrwSrHf/qTah9HbXKHqG3fn2R3Tip+Ir1wgaQQc2Xj9I7Jxy2ZyPt+3beuid4nI8Z3omcbDAMbkSCTfJitKkP0N08qJgs/NnycmC1q6kN0T0WRZ1W+3dCE6jbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PuB8V73CcDphmO08ufkyEitY1Sendrt4MLUtC2jjUe0=;
 b=m4WlgqA32ONB90cY7IvCknOuAfCUlkiKM/Pp7ZDJs/Q7+5UzKiQ+v7jH1XO+cW0wXtFLjanrZcoyyWyUkAUk0O/IjukE22Hct+m3rHJepQqFDW7QNWNfI0EP9GmPNeCBBJ15AVYe1VyAQ4h+cT26HShJ9zyClaXoehYSOkwxpsMP2sSQfGLxeBXdlLidM+LWsZdobUYmpbGHy2AoMkUffT70Ari4w4Y0h9WEP4K1pA6HDKi7dKSx5ucm6sxt8cFVrF247WMFaOUn7/FmTY2LtvOhaWz47Iz1EDqs2bI9SINWFsyUDzw69rXMsoOxYtn+secO9GkSaoJ1PLQPbZUv8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PuB8V73CcDphmO08ufkyEitY1Sendrt4MLUtC2jjUe0=;
 b=mu/DNvzLobM/Y0g2WUqEXxKXqWMe2Z+JLGOkDjiapDmIAlnYQDzAhFx3nKOp4XKFkM1dGfCmYsavVL65xO+xKaWg+PVPRXeUhk+ctvtV9suWlWxggGhOgqmhBqALQZSCbqiKSSNkOQY8UWY67JaM2h5JwSpKxRUzQ+M3/Z1Sapg=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB5212.namprd11.prod.outlook.com (2603:10b6:806:114::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Tue, 29 Jun
 2021 21:07:22 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1%5]) with mapi id 15.20.4287.022; Tue, 29 Jun 2021
 21:07:22 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Tyl, RadoslawX" <radoslawx.tyl@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 4/5] ixgbevf: Mailbox improvements
Thread-Index: AQHXbNSk1i9zDkdQvEOS1glV5VO9rqsrfKkA
Date: Tue, 29 Jun 2021 21:07:22 +0000
Message-ID: <fd5d240b88b5315cb7652bba867a07aeaee89976.camel@intel.com>
References: <20210629104941.2460721-1-radoslawx.tyl@intel.com>
 <20210629104941.2460721-5-radoslawx.tyl@intel.com>
In-Reply-To: <20210629104941.2460721-5-radoslawx.tyl@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6f3a8af9-62c9-480a-890e-08d93b41e35a
x-ms-traffictypediagnostic: SA2PR11MB5212:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB521262F59006EAA246C0E29CC6029@SA2PR11MB5212.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r/KO4kou+/HchehXDgTPDDSeYzx0961TPuWdq5uKw0LZ+ZRSkSH20aeJk810MYNteUOpv35SgojyEyzbbrZJSDw2A0H2nCSKy1RFsXb+WtTCumNH+ul0sLYLUuEvkxfbKotvRSXx8R14IXXojc1BnvDS0t33IbLv8296DQVwAGyPzKDMniGyo/jqV6bGpvAn3P211tlSf/4c/SDdIG2bSVxFXMa+J6sAadyDXtwVMFSi7q9+HeCGQvbxnemnsO4RG5YpnRtTgNzd7VokDq2mXBLw/GIobZkph7h5Lc0GPVHPnqcvPQ8pAe8n02obesUAG4ypCi1aNlgn1TCsubGyqWMwD0NC8BZLIJEqqEOuixdymj5tuQ5KSPtJRpqmvXPI645wME2y2nnaMM/b1vJZCGzKqYY4VKCpOksSa3r1SO4j9oDaUK+nkOIujesqe6JlH47z3MUbLtK96tdSwftaxbmM81nIjtzCN7Mh3y5ViKzfxCNOsALy1ud1h4xp7G0c2FiiZRD6oPUOg6/k6tqwVtyMkhlwAQCH6sALqrwSvPI41Dm+V5/JRK0XR5gWfPvUNRwlF+5O2MWxeaCfx6UEkai65Qfz9tW9+vrHHGrsB2ACHHURRpna8tYphNQC1v4BFrkQPixgU7PTYcQha7+IUw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(366004)(396003)(136003)(39860400002)(71200400001)(38100700002)(5660300002)(6506007)(122000001)(316002)(26005)(186003)(6486002)(110136005)(4326008)(15650500001)(2906002)(6512007)(478600001)(2616005)(107886003)(86362001)(66946007)(83380400001)(36756003)(91956017)(76116006)(66556008)(64756008)(66446008)(8936002)(8676002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NXZwZmZzcHB6Ti9hRUl6bEFpLzVQNGJNbGxsVWRjN0FURVIweVg3M2s2MlFD?=
 =?utf-8?B?Y3NDOXRNMHByWkF3c3ZFQU8rdk9ZZDlKTncxdTBHZlJJeGZnTk1GRFBsY3ZN?=
 =?utf-8?B?YXpNd2NLa2xQNDY2Vy85eHUzZU5ydjB2dWM1OXZoMmNYMXNNMW04L0E1WnMz?=
 =?utf-8?B?djMvMVlvWFQySTJidTdpVVhmekpvZzIwaGZPK0dNWGw0RU9BZGQrcmkxREhD?=
 =?utf-8?B?Q3lHUGdoYXJyNnVVUWlWUjkyaDYrODAzYTZycDRFWnZSSitMT3dZekREYUl1?=
 =?utf-8?B?T2FwWjZKQjRwUWlvZWIwb3dMaXpwWllUeWdsOTBGUUdNWlE5VVNScUdoek1S?=
 =?utf-8?B?MGgvMzAram0yYlNkQUZGWDMrUzdWQzJXL1hwTDBuUmVWdTA5Y0g4YlR4U3FR?=
 =?utf-8?B?K3ZKZW1UTDBBVmRiSDFPOVFnM1Z3Vk50a3BoaG9mNHN1SzVTcGtDOFVuQk92?=
 =?utf-8?B?ZDdzMk9jaUMyT09UU0k2M2lYVzlWYXdXMXdTYmJ3blV0QllMUmhQU3l5S2tF?=
 =?utf-8?B?ejZmRDZaN1ZIdk12dzVyWWhsTENtUENHclo0QmZBV1ovc0d2OXhJMnFyUDlF?=
 =?utf-8?B?TE9kd2xKSXoyUStzRnJHRkp5a0d5QURaRVVKdXg0ZTduK3I0blNJdXBqZy9I?=
 =?utf-8?B?TkpEalRzNXBuUzJjTGR4a2RiOGk0SHVEelpmdUhpeDZteVpyaWMrbHBpQ0l1?=
 =?utf-8?B?K3BxN3BRbWNVL0UwNHNEUnFZeEo2ZlE0cCtRYXhQbG5oNVlTY2w5NlFobElF?=
 =?utf-8?B?b2VrRmIvSzlIVlhodVhoK2F2M2gyUEpuajFLKzZLSnkzL2FNMmxDSEs3SlUx?=
 =?utf-8?B?VEJqQ3NxeVFVRHh6RzJtV29YUjJTM2MweFN1d2lQR0N6QTM3eWp0RW11b2lJ?=
 =?utf-8?B?ZHpudDdnc3RxRnVQOXZrOFVrM05HNGZEQmYvWHQ5WEVvSWpYMWlGckl6a29a?=
 =?utf-8?B?LzZia1dQYmg5dDRjbDdyR2U5VmdSZ0xxbGgvZG4zVmFjKzVaeFFUQXBTcCtR?=
 =?utf-8?B?dEVBMVlyQTVBd3FORnBTOFpGSkRTZ1JCQTg3ZWlxa3gzSXQ0bzVFazFiWU5Q?=
 =?utf-8?B?a0xEcStJbGcrczRTTHkyMUZmakJlV2xUWGVrNlRWK2d2b29SVmg3bXZPa05m?=
 =?utf-8?B?OGVPeCtxeHVoT092UWpBMFZXckpSQUhZN2pEWGVBRVVOS2lsRFh5RUNCeDNE?=
 =?utf-8?B?N0hnZmVUYWVjWWNDblErRzV3WFBZbjFxYmJHSUQwRGVkV3c4d1Mrd3RvT3pZ?=
 =?utf-8?B?Qk9VNVpBMDNNQzVwdDZIS0hTcmVsY0NLWWhSY1ZYTWpSY2ZTd3ZGUllPUG4y?=
 =?utf-8?B?elhEd0FEblJWR2ZHVEhzWXNGT3M3dFpyYUVoRTRLZlZVZ2hUV3UxKzRmOFJL?=
 =?utf-8?B?c3Z2NUh3TlFiTGRuNWlYekhtMHpFNWJwUE9xa2doQzB1Y291WmFQMHB3WlN5?=
 =?utf-8?B?Zkpmd00vYTlSdFhVM2R2QmxsVktpYVBaQVIyTVJqelN5ZjNLaTNEUFR1SFdW?=
 =?utf-8?B?Q1lSVnlDL2FTTHJCeXpvVTB5VUwvZlRFbG1vaHRXREdwdGErL3dJcWkxZlc3?=
 =?utf-8?B?TnpTUWZLb0pIMTIxWWFOa2VQNlFjVFVRMUU4Y3VrRGs0VmFqbURxZzE4a2VF?=
 =?utf-8?B?cG1BNW8wTTdCVnJaeU5zZm44aU1pU0RyNVhBU0p3RkRueW9va0NJMnd6QU5h?=
 =?utf-8?B?VDhRL2FQaWU0Ykxhb0xNNlhsSU9qTitJZGt4eHJLNFo3MXl0L3A1eW1seW5l?=
 =?utf-8?Q?BDoKcE1kpQcbN8qDyHg3domiuIakw1e8c4upcZ4?=
Content-ID: <5F80D63ECD49DB4A901E0A39DE01F5BD@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f3a8af9-62c9-480a-890e-08d93b41e35a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2021 21:07:22.1860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cfvd2HTiXGfiNUtB+Vv+RDM6JHwAMb+svJYiR0Xw+LSadqojLCdpDvvjKrJMWrvz0A0dFZ1mBJGeKjaf1ksEhpm8obh9VbXfPF31d/+0OUI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5212
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 4/5] ixgbevf: Mailbox improvements
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
Cc: "Skajewski, PiotrX" <piotrx.skajewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2021-06-29 at 12:49 +0200, Radoslaw Tyl wrote:

<snip>

> +/**
> + * ixgbevf_poll_mbx - Wait for message and read it from the mailbox
> + * @hw: pointer to the HW structure
> + * @msg: The message buffer
> + * @size: Length of buffer
> + * @mbx_id: id of mailbox to read

There's an excess parameter here

warning: Excess function parameter 'mbx_id' description in
'ixgbevf_poll_mbx'

> + *
> + * returns 0 if it successfully read message from buffer
> + **/
> +s32 ixgbevf_poll_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size)
> +{
> +	struct ixgbe_mbx_info *mbx = &hw->mbx;
> +	s32 ret_val = IXGBE_ERR_CONFIG;
> +
> +	if (!mbx->ops.read || !mbx->ops.check_for_msg || !mbx->timeout)
> +		return ret_val;
> +
> +	/* limit read to size of mailbox */
> +	if (size > mbx->size)
> +		size = mbx->size;
> +
> +	ret_val = ixgbevf_poll_for_msg(hw);
> +	/* if ack received read message, otherwise we timed out */
> +	if (!ret_val)
> +		ret_val = mbx->ops.read(hw, msg, size);
> +
> +	return ret_val;
> +}
> +
> +/**
> + * ixgbevf_write_mbx - Write a message to the mailbox and wait for
> ACK
> + * @hw: pointer to the HW structure
> + * @msg: The message buffer
> + * @size: Length of buffer
> + * @mbx_id: id of mailbox to write

and here

warning: Excess function parameter 'mbx_id' description in
'ixgbevf_write_mbx'

> + *
> + * returns 0 if it successfully copied message into the buffer and
> + * received an ACK to that message within specified period
> + **/
> +s32 ixgbevf_write_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
