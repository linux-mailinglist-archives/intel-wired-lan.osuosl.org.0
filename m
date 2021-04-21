Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC33367580
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Apr 2021 01:05:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7534340607;
	Wed, 21 Apr 2021 23:04:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4uLGWV3zdbsm; Wed, 21 Apr 2021 23:04:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCCBA40601;
	Wed, 21 Apr 2021 23:04:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7E8E91BF400
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 23:04:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6C6446060F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 23:04:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q3fmoPBL-Qp5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Apr 2021 23:04:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A2F0660017
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 23:04:51 +0000 (UTC)
IronPort-SDR: GU+18AQQZwfGgSr4AmndoWpsqHNbJ/h/2elQBAd96iy1va4/Eo+TqMNbS+K/8mjEVmJFwZEalR
 9EM/H+UdXwFg==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="183282229"
X-IronPort-AV: E=Sophos;i="5.82,241,1613462400"; d="scan'208";a="183282229"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 16:04:50 -0700
IronPort-SDR: RT1Kp5S3GOJXWT1g/2e2XxICXtevOoSwLA3eXMG+IAWZrTU6tCBNFVtxGpznPNgFADo6ioF4Rq
 4k1Mvl8N0zRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,241,1613462400"; d="scan'208";a="421153601"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 21 Apr 2021 16:04:50 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 21 Apr 2021 16:04:49 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 21 Apr 2021 16:04:49 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 21 Apr 2021 16:04:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HfbYTzQF/C5sN50HrW1S8NlEFVM3Aba50B+Df1prHi/YX6brwpdFY76BM7ZvAkeF+ygEtERY7XYZHJCNZk3wLrX0uaQSvJDqlYQXQDsTai8Jojr8v/HDX7I7VD0puO7LyOnxVnjapUi0Aczocs54boL56SUpsauEECJ7iYB2DN2DRa1RBXTufVvOcxUWS+x+rqKNA3BhYm6OmI2NBQAiYjFuD1GW4hQ0VPCvRzoWz/JE3ngW9lQYDypqFcUSk37SnbJg4NfQFCBrAZFltKXbkTTPcyPKBgv/mq4Xs4CtbYZoR1zeHE9XI8yMcEAuWaSDFx2U98J6ATHBX6G2WTGpzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wR9JxsQc2tccTZSmAGVBiZ69H35Su0sAId6ewlCJryo=;
 b=e9j1R4aR7hJ9brvAGgHVgh/Wn/twp9MWe6PV+XG/nVZnSzzkPiv+dLFIhh8pzlpfDJuNXuu8OPeiMjMAmfmIcmylJM7uyV2xSYjEc/TORdcNfS5kGl3elz9k8NI38C2/0rSFSDgp6gImbD/7YpVvzW2STBTh7sskOe2SC8KuFIqqgbMm+PNS0pNQwTv/gMmy/dFaofjF5G6dudJMpX5ZagrRcY/0P4sdOADhvuCyIthJmNaeQRbgueeQuhG80j8ZXWjVaofkyQlN7T+K+4WHaQ74XiLPTTSh8zfZiIATLyub9fp2yek4RcyHkxezbudFp9kJO2ShHPfcmH7CPnybww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wR9JxsQc2tccTZSmAGVBiZ69H35Su0sAId6ewlCJryo=;
 b=q9xMcIgTqjgGvk1HDhF/eGy9OIulHGykzmYtkc8+eDqwekVkOJwNyKyUcM37IkD2Z6gksA4bxXaKMyH2FRWa7QtzFLWFvw9Ag+HUwv0p/f5JE7YXBpEr+BGS8KDs9SQrAz7kIALxZEP73J0U7xbkLCU2Ql9S+K+f1gtz7q/6QiU=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4812.namprd11.prod.outlook.com (2603:10b6:806:f8::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.20; Wed, 21 Apr
 2021 23:04:48 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c%6]) with mapi id 15.20.4042.024; Wed, 21 Apr 2021
 23:04:48 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [net] igb: Check if num of q_vectors is
 smaller than max before array access.
Thread-Index: AQHXNsFBvvi7rpa4TkSX1HJHvzC8cqq/l/CA
Date: Wed, 21 Apr 2021 23:04:48 +0000
Message-ID: <a67c77ec2bfa15baece0de2f9223897b732e218e.camel@intel.com>
References: <20210421151511.4230-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20210421151511.4230-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cdd1b6f2-bde3-4cec-b608-08d90519dc8a
x-ms-traffictypediagnostic: SA2PR11MB4812:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4812193F2F178761BAEF3607C6479@SA2PR11MB4812.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4unBobmoQaTgSrQItT1OvgakA86HrKxSF1hGrr9Tx3rkG+hLjnZZr04zTxpi+PsVQYLYrkIKDFBq6Vl1DVZ67pi+I/EdkfXMYCYEhM1ChoGMCgHspOJMi9bscrxHIWygv2kgfEaVgEstO9UiomgxTgcQB4BPmxxtoWwyEDZKohXTNyHYjgcOXRZHuIYI4lTeLMwrL16ypXsS9rpN8Ki5yvlJML7p6xzGftRo6NAdK5/Vz6LTU1UtenO91Ht34ZSPDTTAQ1Td3q3TFVuLJwK64leiQNXT556zp6wTrFLnCG11mkCiBPnnla7aOBHo/VhOdT0ZaaKV2X/fHJrci2RYFTlKLl3JI5DfZU+IVJkqUO5h9lVO8cCc8kYDUtuskRazNOkXCJZMzw3SQ2jQJQ7Q7DB0UW0d63wDT8h5GpiKFeuKr0nrkuEWamV5vPj17827VSiCTZ/1xb8kM45IatepHcZu0N3AjKAulSOvgBE7Im76o/Q8Up5Q4PpLTrP+FwWY5ZQkO3y8+shH5K8Ah3zz03A+ys0YQrvcMX4RaN/EzGPxg7B2tn7bi0R4SeUa8fsXH52TloDWbfbrt3+JP88B3aeZ5TvZdmrFde5ZAshYeakG9srkd/aG/8gQyGpx9H3M8rIl2U7Ko3un+9DySE/bVA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(136003)(366004)(346002)(376002)(39860400002)(86362001)(83380400001)(122000001)(38100700002)(2906002)(91956017)(6636002)(8936002)(66556008)(76116006)(66946007)(66476007)(64756008)(6512007)(66446008)(36756003)(2616005)(71200400001)(8676002)(186003)(110136005)(6486002)(26005)(478600001)(316002)(6506007)(5660300002)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?OXpBcHpUZlVNWTdmdmZ4ek40VGpsSFN5dGpLb1pHNDZIQWEwSm1QdkhNclkr?=
 =?utf-8?B?NzdpSWoreDdSYjFyYkwwMHZWdVllTmxYRGc4UHBzVG9XSHNQeFQ0Ym5OR1Nh?=
 =?utf-8?B?Rks2MU5sOXNpR3FwS092d1BqaUFoeVJzY1IxQm8xN20vbU45cTNDd1FBUk81?=
 =?utf-8?B?NU5pZkhoSlJDL0FIOUVrNkxubzNDRitENGxiSUhrb2RiL3lnaWdKeTNEdW5S?=
 =?utf-8?B?OVhkLzRmeHRLM3k1V05ON25IQ3BlNkdoZHRDY2IzWjdDNS8rVWkzM1J3MkhX?=
 =?utf-8?B?OU0xdnFwcnNub005WkhzTTk4aU8wQUMyZDhJQlZUQ2dmdjJmQUVLRGovQkE3?=
 =?utf-8?B?RWVzWDBUMjBsSUNmNWtDbmN2S1pNT2M2L003M21FcFovRFZ3dmlvTTZvTjhm?=
 =?utf-8?B?YmRzaFhqU21zdzB4TzJPb21hcXp4WXlOZWxMNy9uaElvalVPSytoaUNZTy9z?=
 =?utf-8?B?RTdJdkV4blNoTlI5NWxNYW5Kd1pvc2didk1YWStEZXBxNzk2alZiWjlqY1Fk?=
 =?utf-8?B?RnRCV3oxUy9GT0Eya3FwYVpNRWIycVh0N0djK2ltVWlqUjFJaEtwQThjRlRQ?=
 =?utf-8?B?Ukh2UHpQRU9ER3piWi81eWxlMXEvTzh5eWhxY0lTMTd4OVp4TG5nYnh5aXBI?=
 =?utf-8?B?MWZGVkpCZnFHaFVZbzI3c1hCWlREbUdHQzNUZ3hNdHNJVmJUUE5BRk5hOTVt?=
 =?utf-8?B?bzBnZ01jZGZXd1VTR1pLT1VsTk1MZWVJY1dPTGNTVUlRTHNabGhFWmhrSUJu?=
 =?utf-8?B?U1A3R0FlZVZpZmZjYWxzQndpb0d4Mll1bENMTzUzWlBRdE5IMm5VMnVJZ0o1?=
 =?utf-8?B?VVc3NVRMRHdjVStaeEE5UldhaEJ6VCt1SXcxM0R2cjhvUlY4NUJzQWlhQ3Av?=
 =?utf-8?B?enpaSFpQNTQxYVNOZzNsNjgxaXovakJWcEdrS3dXbjF3d2NSSDNWTmN0OFhn?=
 =?utf-8?B?K1lwaEpQY1ROTUttQ0hieWlTZmJmWVpzeC9kQ3pnNVdjZzJrNlkrSys4OWVG?=
 =?utf-8?B?MXhRMUpyeFFXbDMvZjFMK01ZQ2h0V1ZtN0g0b3Z1SjJKc1FSQXU5QWJtdmdJ?=
 =?utf-8?B?UWt0bmxoQ290cGtzeEY5M25DMUtRUUVaeTZjeGZtZGhQQTQ0YzhFcUZLd3hm?=
 =?utf-8?B?TWVUV3RHUzBWMWN4dFpiSWszd1I1eXA1UHNHelovSGg4QlpBUHJqVzl6VWFW?=
 =?utf-8?B?c3hTeDE0ZjNTdzNFV1YyMTNFQ1IvM1lvMngxMEhvK0Q2anFNOHF0Z0FxTXQ1?=
 =?utf-8?B?SnluNGh6MFlOU3lKTlJZTEVYako4N1JwWEdxcGNHRG1GT3Z1ZjlUZ21zSjQ4?=
 =?utf-8?B?c3dZdHN6V2VDODlsY293RGU0c293QnpuWTRhZlR2TmtrTkRaN0RkZzZHQ1hp?=
 =?utf-8?B?RlNrMzhib251UlBUQmJWSVJCdGFGZ1IzQ0N5M292QVdpUTQxb0F3cm9Nc1p3?=
 =?utf-8?B?Wlp3UUtMRWFjL2xxdkQ1OXIzem4zTkJkOEt0aWRreVJPSzcvME5QaGF3QlBC?=
 =?utf-8?B?Yk1hUDBwOS91bmxDN2ZEUnZTMENMREQ0NnhFYkF0cTFFZDNXdlk5TFJhOXVM?=
 =?utf-8?B?RUF4UW51NXc3eThIdjlYMTVQbXhDTC9rcEJHajVQSXhhcmdQbEN6UnpHcHd5?=
 =?utf-8?B?MHQ3N3h0NHpHL3lvQlYzTGlDRGREWThUbWNKckVpSDM0ZDdaN0s1UExGV0l6?=
 =?utf-8?B?a01ldmVzbVR2NC9SUWk5UDFJNnhzdlIvVHdEV3Z2SmlkM0RMN3JMNkNnWkd5?=
 =?utf-8?B?SXZzWDljKyszWDRqemtEaVpQTVlQOElBcm9ZSjA5aVd1c2x3Qmt1TnNQNzhm?=
 =?utf-8?B?UHY0QUlqTDlTRDVsQUhqZz09?=
Content-ID: <D82F3BC6013D384CB1D40B9B161B8FF8@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdd1b6f2-bde3-4cec-b608-08d90519dc8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2021 23:04:48.0536 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /lZ9uNgeMmHdb9hITNrVyMhRexLWPbrK4wjgLk2S2X0ABPeXLgaAOrqHfCB7ZOXDA5cnQtOdHlS4Z9C3c1jRc2wvvflwJtq6Ekc2eTRMeWc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4812
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net] igb: Check if num of q_vectors is
 smaller than max before array access.
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

On Wed, 2021-04-21 at 15:15 +0000, Aleksandr Loktionov wrote:
> Ensure that the adapter->q_vector[MAX_Q_VECTORS] array isn't accessed
> beyond its size. It was fixed by using a local variable num_q_vectors
> as a limit for loop index, and ensure that num_q_vectors is not
> bigger
> than MAX_Q_VECTORS.
> 
> Fixes: 047e0030f1e6 ("igb: add new data structure for handling
> interrupts and NAPI")

As I mentioned in the last version, don't wrap the Fixes tag. It can go
over 75 char.

	Fixes tag: Fixes: 047e0030f1e6 ("igb: add new data structure
for handling
		Has these problem(s):
			- Subject has leading but no trailing 	parentheses
			- Subject has leading but no trailing quotes

Also, please remember to indicate revisions with change log when
resending. i.e. this should've been 'v2'. Can you fix the above and
resend as v3?

> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Reviewed-by: Slawomir Laba <slawomirx.laba@intel.com>
> Reviewed-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Reviewed-by: Mateusz Palczewski <mateusz.placzewski@intel.com>
> ---
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
