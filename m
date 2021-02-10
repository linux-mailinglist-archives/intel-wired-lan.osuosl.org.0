Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F04316D50
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Feb 2021 18:51:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C300862B7;
	Wed, 10 Feb 2021 17:51:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l9X9MqyJrH6N; Wed, 10 Feb 2021 17:51:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E2EB872F0;
	Wed, 10 Feb 2021 17:51:21 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DEF5A1BF860
 for <intel-wired-lan@osuosl.org>; Wed, 10 Feb 2021 17:51:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AF9A96F59B
 for <intel-wired-lan@osuosl.org>; Wed, 10 Feb 2021 17:51:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8wlGAfZier16 for <intel-wired-lan@osuosl.org>;
 Wed, 10 Feb 2021 17:51:18 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 4EB536F6A3; Wed, 10 Feb 2021 17:51:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 266086F59B
 for <intel-wired-lan@osuosl.org>; Wed, 10 Feb 2021 17:50:48 +0000 (UTC)
IronPort-SDR: 1BhB/agV5ZoRklpSe2DypclRLYFhUGtGF5nL8JDxm3GO7of/p50VQ/qE1KOUesMdAnm3G9sbWe
 Y+lrgSz53AZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="246187665"
X-IronPort-AV: E=Sophos;i="5.81,168,1610438400"; d="scan'208";a="246187665"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 09:50:48 -0800
IronPort-SDR: i49NDTqjPBnAuc+XQLfiQfhil8IkfarQEMtUKLyQ/WboOUSKXwaBwiZB0cL1iaxGi7ELzTDteA
 H1incS+plnOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,168,1610438400"; d="scan'208";a="578494443"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga005.jf.intel.com with ESMTP; 10 Feb 2021 09:50:47 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Feb 2021 09:50:47 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 10 Feb 2021 09:50:47 -0800
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.50) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 10 Feb 2021 09:50:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aF1G16F3a1TSEboIaufl7qH9VmFOat4KJqeBYYt5uYoT6gMy1UW5NyzUmiTgiUaQ/CQfBzjK2FlAKf/Vf9RF0SEdty1R/pO34ymfxVxe10uGWh/e7q2T+0vS+gs8pEtGsTEke6T2s8Tg3rQZ+H4C+7vAFHuqBnO9R/uJWqU+A/NpPEaOOW5bXecnNNER4r1Bx356X0wU+CABwR1uJY2qxGpzTF2j/CZRhcKQ6+9DOwcmeW5xauE3JK6/q6l0mnPlicni6Eq4UyylkM5I9z9V9NLogUSPvos/1pUm6zRVBp4lvLLweCrEfALrSkSW2N4CYALQbN9F8eoAAj+M7b30+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JpxbniIsXX4i/wFH9vBrCJbQMwMRQoW+0KD+FPMsm10=;
 b=gSKUVkxHJaVSU3xAQPd0hjZEB3+p+lavtzyXBlbAeAoUBiwaHEnhmnKtZutikOY6gUvO+aU46Vtam4hJKWT+iG9uCpF982NlXlx01PNzc8kVDGO9FIRHdjcE0NeLlJINKyYE6E2RZoopBfJDAXlZb8Paw89gwpN3A4Bbs3+JGoPwbRFJLTlVjsEZtbKXdv02MMK2T7FWYnWHB3thclTIElGKF6Z8yeK9tOH4nwUqXdddI3pQARI9WZPyDPIQbbmXNiRV1X/gP+cxhLNzQlPSM31iv/YSnhRGj+5KTPSYt/CQ3z2lkZ8kqKJ1zzzrR9dP9q+Q7IzqecbPYwb9xzmcug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JpxbniIsXX4i/wFH9vBrCJbQMwMRQoW+0KD+FPMsm10=;
 b=K1BfunuyhZzWnlxf9dBLamh2Xp3hgiGaYmtKaFA8+2bM590Ik3da5VUM2BWz/vVa2wN/ofR+m52YRL08QYTh6yKgjKgqY2OkmyWqTCyUiXbADJZ02gPL3pyBGQ5wYX2yC47iUu2CuwqAdNoyTLkJBwtk/vr6OkQNBsh3x6SYhIY=
Received: from MWHPR1101MB2207.namprd11.prod.outlook.com (2603:10b6:301:58::7)
 by MWHPR1101MB2272.namprd11.prod.outlook.com (2603:10b6:301:51::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25; Wed, 10 Feb
 2021 17:50:43 +0000
Received: from MWHPR1101MB2207.namprd11.prod.outlook.com
 ([fe80::c0d3:3a34:c1c3:fb83]) by MWHPR1101MB2207.namprd11.prod.outlook.com
 ([fe80::c0d3:3a34:c1c3:fb83%3]) with mapi id 15.20.3825.031; Wed, 10 Feb 2021
 17:50:42 +0000
From: "Patel, Vedang" <vedang.patel@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v5 9/9] igc: Add support for
 XDP_REDIRECT action
Thread-Index: AQHW/o9zk2HB5xjpFkmsTAlSou6DfqpQoD2AgAEL/gA=
Date: Wed, 10 Feb 2021 17:50:42 +0000
Message-ID: <CE2BD7EB-B2A0-42AA-BA29-59130804C121@intel.com>
References: <20210209024141.23298-1-vedang.patel@intel.com>
 <20210209024141.23298-10-vedang.patel@intel.com>
 <8c6e414e03c2bdd01916ee63f6912df3b24e86fa.camel@intel.com>
In-Reply-To: <8c6e414e03c2bdd01916ee63f6912df3b24e86fa.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3445.104.15)
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.96.95.157]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 21fe4eff-46df-4e6a-f5b3-08d8cdec62f9
x-ms-traffictypediagnostic: MWHPR1101MB2272:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB227230889CD7A9F3C76DDF5E928D9@MWHPR1101MB2272.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eWRsMO4sEvM7bfdyFSLyLdPQpL2M8Cq4wHb9/oET0ApIyOqKL35tJvuut4llBZTHGPmrFVtO8Hx3ZHjmGdfpJ+73vDmwwwshrB/xou86yElsMFZXgSaTdWh7lzZe3dbiP2Zm57rLx18VOoIb4ai/52m78L4jIAiGA0MAX0bqHbYw8MkUNKxgxrc6DIGl/hQUerjtNZ2m/SGpNTEdxxNHOjzIchAjtG2HY95SIJFqGDdFE8QcSvARBdXkjs5ENv4m+mP6svo2jQj2NcbfnQrepi+BD2pdAi12WhWtCp7MNYgJHR1zHwjj2w9MQ4Qd9oz6WfL4joHfRfkfjrauDtJj2c48aOFC/xGgR4cxE6UW4Hz4lHxIUIqoeNNl/Q864TnP/wJeEfuK6zoHUmu922AbB0ZlcSeLsVGK255pkbxdZZsYqWntPpWpOcQd9TTqRrWN+C3cwloU7HvBEoA6wpGNjOwZ2MRHAnG7ZNycLEEQZQqQtimUN1v2fyybk8KNXDuFxRgRV1c6KSQfiycob08nIpRP9vGxQhKrGSZP/y7xF2ipkOmZ4kc78xu9bAjyohw6bCKWMAY3SL7H032ZqzKF4aZ3aODsFCrm1X2vTxkCy4kcf/wPOYZBgb4dJ1ByNpRFDdOs2C9qm7CBYsMaylJVoA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1101MB2207.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(136003)(376002)(366004)(396003)(39860400002)(54906003)(2906002)(86362001)(8676002)(33656002)(6512007)(76116006)(107886003)(71200400001)(2616005)(37006003)(186003)(316002)(4326008)(6486002)(5660300002)(83380400001)(26005)(6506007)(6862004)(66476007)(64756008)(66946007)(66446008)(66556008)(8936002)(53546011)(6636002)(36756003)(478600001)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?GWoOexUK5J7tTvp6qTC+7eZrI45YtDf8CLJFAKif3o2MdHNfn8P8ZZMTXvk4?=
 =?us-ascii?Q?4f8DkExDBBJtI2J02Os8Z44om1PH/vD1CKEm7AwqONpG6zAqCDDEcX/cYcaA?=
 =?us-ascii?Q?UyzYGyOi8pkDSbnCctyaC+dIPmrS8oMEa1zEc6dWY1h8iFxfOGFcPe31vnd9?=
 =?us-ascii?Q?PIKWTxQ/MxPDvcWbaveNes79zy7hpxWO3WMB/4KR6Q1vpFzx01mWn7D9F6O8?=
 =?us-ascii?Q?b2Ky2JZZtnCh3t6liJFJ76fNkXMi72oCgnONY3XjEwkTELtgnv4Yt3BcPHU0?=
 =?us-ascii?Q?BYy/O1x82gxKqs1y8/mQuS8+qbLheZOKAlOthvFnEaqGoCHJ8FfJLG90kSd+?=
 =?us-ascii?Q?0iBLd8nKtOlTdHxduFkfyuFerU4aDyoxHZdbOH7GZ2ZifPgK3RMfCSk/bdkz?=
 =?us-ascii?Q?ceWqKVb6TIZl2b7QzUf2a0JShosQe1/o1kmx46zH4z8Tw7eLfqRxpxU/TSBl?=
 =?us-ascii?Q?nGNp8mK+WpxIu1zVMAXecsO0gIiTc2Ix5PB8cif26y3afHDWYEJrO5bd//+S?=
 =?us-ascii?Q?/HPB+V3xIAh7OVU7dhMf3YiMDO0b7ljIttgMN9e4X9B/984eUw+HMtTUykdG?=
 =?us-ascii?Q?T5cjw4OZJUF0It852HDjqqPDgiZySS5r0TfeV5gwbRzVXXWfEwdknbgSmBv1?=
 =?us-ascii?Q?bYrGqAchfiMqRyTU7vNONRY604p4vD/AMmifZEZKfcXowJbF9Nnq145qYa04?=
 =?us-ascii?Q?qwYmSHFcF/hfsNUp9w256KiZCPfR/RBz51OpJBGV8HFO+VTGm45gmYXgdKOR?=
 =?us-ascii?Q?afPJ+jSPO9uyKuZ8tz3zVaWXMixM10ighC9cCR2b3AFVmjTNos1f5sh1ws9M?=
 =?us-ascii?Q?PfB80y9O1+c19v3kU5u8prW33MXWPpsJgmvBXeakLVU9jNWcE8Du3GcpUZdw?=
 =?us-ascii?Q?dHl0dEJcv1ycmgCdQ7uB4BHyzxLo+28oobi3inrTC25Gk6hI69xmUyDVyk3w?=
 =?us-ascii?Q?TZRUavAFYBlqZsZyUFonDDIAHuKY8lksIL2mm6Cc2mFmUa90YgP9xJBQM+m9?=
 =?us-ascii?Q?nuI8+gTVoslonNyXyCeACmo5vTV1AvKZfU3Zzw5iVEvctLwRtiUNwEcCu/8j?=
 =?us-ascii?Q?cuqlgDcuwqwYJZCbDfhtONoQofiIAg/psWtTFZt5Bi90aArz5CD/Fw19aATY?=
 =?us-ascii?Q?gFaTNu7iM3XD02Fc0zBCNI1bshd5YCuGwN2vmyPXX0GUZO/1sdn67N61mFoG?=
 =?us-ascii?Q?Cc8pGL0czK0MFXkVZ5ogv2jH8fL6Qtaga6Y0iVvC9IVEt8Oj5fL2mQP5U+XM?=
 =?us-ascii?Q?0e7JtFhuO41mm8JjiTY0tRB4TxpLyMjSLFU8ViWzETTQFY4ENdO4sILStpzY?=
 =?us-ascii?Q?4asI6rVt484LwItzY9LveLdV?=
Content-ID: <A15F613A9D1F1547B58FBF7292C15381@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1101MB2207.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21fe4eff-46df-4e6a-f5b3-08d8cdec62f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2021 17:50:42.7900 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0HwIPgW0lsN1U1sgiHbSUIWXJEa055EjAoDZYCZR8JbUpLuzeX0hthy43G+Hx1NDtjAwMMCtOYCf1Yl1kqY2NA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2272
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 9/9] igc: Add support for
 XDP_REDIRECT action
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "andre.guedes@intel.com" <andre.guedes@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> On Feb 9, 2021, at 5:47 PM, Nguyen, Anthony L <anthony.l.nguyen@intel.com> wrote:
> 
> On Mon, 2021-02-08 at 18:41 -0800, Vedang Patel wrote:
>> From: Andre Guedes <andre.guedes@intel.com>
>> 
>> This patch adds support for the XDP_REDIRECT action which enables XDP
>> programs to redirect packets arriving at I225 NIC. It also implements
>> the ndo_xdp_xmit ops, enabling the igc driver to transmit packets
>> forwarded to it by xdp programs running on other interfaces.
>> 
>> The patch tweaks the driver's page counting scheme (as described in
>> '8ce29c679a6e i40e: tweak page counting for XDP_REDIRECT' and
>> implemented by other Intel drivers) in order to properly support
>> XDP_REDIRECT action.
>> 
>> This patch has been tested with the sample apps "xdp_redirect_cpu"
>> and
>> "xdp_redirect_map" located in samples/bpf/.
>> 
>> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
>> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
>> ---
>> drivers/net/ethernet/intel/igc/igc_main.c | 59
>> +++++++++++++++++++++--
>> 1 file changed, 56 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>> b/drivers/net/ethernet/intel/igc/igc_main.c
>> index d34d35789e2e..8bb1f8a54368 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -26,6 +26,7 @@
>> #define IGC_XDP_PASS		0
>> #define IGC_XDP_CONSUMED	BIT(0)
>> #define IGC_XDP_TX		BIT(1)
>> +#define IGC_XDP_REDIRECT	BIT(2)
>> 
>> static int debug = -1;
>> 
>> @@ -1708,8 +1709,8 @@ static bool igc_can_reuse_rx_page(struct
>> igc_rx_buffer *rx_buffer)
>> 	 * the pagecnt_bias and page count so that we fully restock the
>> 	 * number of references the driver holds.
>> 	 */
>> -	if (unlikely(!pagecnt_bias)) {
>> -		page_ref_add(page, USHRT_MAX);
>> +	if (unlikely(pagecnt_bias == 1)) {
>> +		page_ref_add(page, USHRT_MAX - 1);
>> 		rx_buffer->pagecnt_bias = USHRT_MAX;
>> 	}
> 
> All of our drivers have needed this fix[1]. I suspect this will need it
> as well.
> 
> [1]https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-
> next.git/commit/?id=75aab4e10ae6a4593a60f66d13de755d4e91f400
I am taking a look at this. I will send out the updated version today.

Thanks,
Vedang
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
