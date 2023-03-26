Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7656C9484
	for <lists+intel-wired-lan@lfdr.de>; Sun, 26 Mar 2023 15:36:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F38860ABA;
	Sun, 26 Mar 2023 13:36:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F38860ABA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679837779;
	bh=valKxSUOzYfTeI+lEncgrIfUFMnBBin6jICL/HIP/lU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5+/q1671L6EnuQHlSX5NohQkJjKnTynnzL/eBxudj2MWCfA1mTxd24n6qvEhO5CNQ
	 MQEYge45TwuvezzOjY+BZjbzbUTsuZiqr7B+MApkvNFo7F+VyjAjpwv+4lvTh060E8
	 FqnBA94r3wVaeDMkozMTg+r4CBnHxDJoIRllVBfmg0bX9qn1JmANdCx5JBUhkZFpZV
	 ratOJ5fsWHeDdjROsn/fd5kkqB4kCGkqzlLmJtw8iZSwAC2HSgOXgLOhZemFXDvDji
	 KLtZHAhkoXNyRQtRSUzi2ORMoVi+u100HcUHYVIksDNqGVXnSBWRaYKnQWzOHiCsCf
	 ag7bggSzbP19Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r2f7uGxCRaNL; Sun, 26 Mar 2023 13:36:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B1FA60A9D;
	Sun, 26 Mar 2023 13:36:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B1FA60A9D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 226311BF578
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 13:36:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F003F60A9D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 13:36:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F003F60A9D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W4kSduQ0oE6D for <intel-wired-lan@lists.osuosl.org>;
 Sun, 26 Mar 2023 13:36:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 467E860A74
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2123.outbound.protection.outlook.com [40.107.92.123])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 467E860A74
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 13:36:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KtICTZ2ee77SGnTQnxsIpodXyZ3ZQCAaD5Uyd3QM2geOTflWdYpwRvDyXuh/p4qt7l+gFeNW+7aq0YxWsqkXd2gfCRYl6W9uOqiSputXss2H63ABf2i4+vX7qXrWkWeydcpVDI+6tOSa7CyR9G7Da/dlSSNpyWMXXk7C4Cs52w5K8pkHRO8et8u39NRDt+6fD71psE1ogjSCM2IUkOzzHEVCzR3v+pEYBIwYFMD3Nq5N6O/IcNb6BmLdgiMXjBnEuTEfA0KqZKF62ccLyboMQG1gJPp5LbFr8ro4Mtlme1TqqDoRSUm6r91EoihOHvbwGED2QLWBK9+YeeiIQzXTgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nzreboyBZz4NOspZqKXoa7FRrMXqgpBIQaZ+X8fLNdo=;
 b=mKvMbg98fU/+O2/pjjdmD3uGtK2q9aGragIUYYzNAQFlRFi58rCKqFdsMgJk6+O7LHwIlZpLujvFr7kzvmWJrdX8ynWRt9Niha/wq2qn7XF6ZNW213EFy2w06X1TZbKUa+FrRzBBgbsMV4QXabVRvId5wlI3BDo+cDWgowx0osIqfpjDdP5kI0M6kBGen8roxNplaGN4SHEPOeowFLRTXrEZGVug1SQxVSM+Baag9Gv8tbALjuCOEBp4XfIW7v+B42UJjKI7AP+u3J5crBRqoXT/siX3WpwM+iSgX/IKy0bWF58Fp57+K9Xkvj8cw0F0SkTBJP+SN3RKfKPzmH/Idw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CH2PR13MB4428.namprd13.prod.outlook.com (2603:10b6:610:65::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Sun, 26 Mar
 2023 13:36:10 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb%4]) with mapi id 15.20.6222.028; Sun, 26 Mar 2023
 13:36:10 +0000
Date: Sun, 26 Mar 2023 15:36:03 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Piotr Raczynski <piotr.raczynski@intel.com>
Message-ID: <ZCBKQ0YIb636CBM9@corigine.com>
References: <20230323122440.3419214-1-piotr.raczynski@intel.com>
 <20230323122440.3419214-5-piotr.raczynski@intel.com>
Content-Disposition: inline
In-Reply-To: <20230323122440.3419214-5-piotr.raczynski@intel.com>
X-ClientProxiedBy: AM9P193CA0019.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:20b:21e::24) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CH2PR13MB4428:EE_
X-MS-Office365-Filtering-Correlation-Id: 94848b95-ffc9-4dda-1ed7-08db2dff0f29
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bJyD43DexHXnI7lKXX6arhvAjz/xwib0IrE2HxKHuRmispKdsG7PCrt2XGUNmSMRs+zN1WHALzkI3IM4OU478Nk7zFsgFikZFKjL+y5MMjn3v7R+CqjNkDGQayXLxOHryTNfT8hOijfNBCBl3QNoLJ4tNQeXW9lfVlLxha5dfzaA63g7YCB5YbVtx0jmHZcwwBjEbgnLk5fYjdFy2byUS86HEiTSNcbCn4AyaT2QEvAAyzMl31Eyb7Tf+AwgbrpZBLO3CN4kzybyXzDNoas2jMRxfF8ftmZZV39a/jq1Wj+lmhNDWw71eTwqDsw16N981yT6r3v55Wzoxk7IzY4mKVXU3RHVcGWBWKbg2Rvb9OHAmwmuP5La2YMr57XGkpeweafQ/yAWfU2H9HkH5H6yeTctHTS2qSurVQFNfesAMZlVD6OsChwdc2nlEqDXMa262dcjFRXzt3EFE4KIVL5zc7j+hUieng6jh5FFVaz9AJ2byf8MXI9zaKNmX6XRcedcWrfDuPW8kXvbZ4G5Dwjf8WJT42reTobtieXrvzrZkhu700JDhGh8L4DXDNOH5Oue
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(136003)(376002)(366004)(39830400003)(346002)(451199021)(186003)(6486002)(316002)(6506007)(6512007)(6916009)(4326008)(66476007)(66946007)(8676002)(66556008)(41300700001)(478600001)(6666004)(2616005)(4744005)(8936002)(5660300002)(7416002)(44832011)(2906002)(86362001)(38100700002)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0RipRaY7Q5fx3E198opTLN47SqurWl7YvMkW5bXZU81QHJ1modqHRmJ+frWQ?=
 =?us-ascii?Q?HgrKLQPt4XLT53/Vjkfpl2/GfQfruWY15MeGD/XZIrOEO7HJfVUL0RNhD+Aw?=
 =?us-ascii?Q?Qto0lhZisWT3NlFo9cWOXR/DoaoEA0ZpIP1dnOxEGGGI9fR+LRACkqnVy4H1?=
 =?us-ascii?Q?xGRjJaV+wgcfZ8JJ0qgkYK7T0ucKTV+QdynmVZD4oWZ7G3JGroyZ+X4xPrud?=
 =?us-ascii?Q?pvUymqyFv0UjyQUIOARlxs0dVxUOJEvv0iAegeCE9vriYjJEjbhxVxz6fM2h?=
 =?us-ascii?Q?ybFGMPWupp9iAz2m62DyRpLDAkb/9BlG5NsOH8kxwKnHZB5AHYPVE6wgLi4h?=
 =?us-ascii?Q?vT3eJZyfNQy/7kw47tGVMoeUvqHUk3SfzaLHbMYh3vyRoPPFYe+RJ0Ts41tW?=
 =?us-ascii?Q?GEejn0q8ZW4ZwBvnfbWVowch176Xfdq1RMwJoUD3yL+KT6F0O9oHDwUD1egU?=
 =?us-ascii?Q?rD/moqjfF4wh7E2mYoMaToooE7NhPoNiR+E0c1FSaz92T+SswnuUsmGX1FJR?=
 =?us-ascii?Q?kDgznGoqd9HOadKSfa/ZiPs/gmXNAxuanfNIdMsRj27XKMCrbxjvTMjZIO7r?=
 =?us-ascii?Q?b4TEAu3DwlePuNzTf2A6QhBp5FP1QFzLZupfeyHi4Q1WNi/OshWVemuDVIuX?=
 =?us-ascii?Q?yVqI0cSeTxKCkl2x8l901K8xDc7abg14Bzn2FJOUp7FsgfBF3YTGSsO8w5vU?=
 =?us-ascii?Q?IZdz0K2Rknfi1jTqv03l1E+oD7JP0mNSI2Wtf9MO/kE9wmXjt4ZckLL7+r00?=
 =?us-ascii?Q?BGYvpGUBzgCwSd4gaShIRsy0DCNGr/M2GPJhthnZJBAEf+dZqHoFcktX+Otk?=
 =?us-ascii?Q?Azh3LtWFlJ+bSTyyWbsqJlpswNN1hjBUL92R4D1xRnLWE9E1iSO3fCn1tz6N?=
 =?us-ascii?Q?VjX7R/GzoreJISI3/qg7C8BrdAaOJ8FQ0KwzvOU/DQYan53REYjajcI+gR80?=
 =?us-ascii?Q?xC3GEa3mCGTNg2GRCjN0/rdbJMR1AeCX1sm7ISwGUCCLjJKVzRdJxNsAuZiN?=
 =?us-ascii?Q?PR/BSLZJa0F6MOSxFdB8iVHYHLUbnGhMsGlJfRObW7tciCv19F69H4syVYCv?=
 =?us-ascii?Q?BfNZ63AAXaFGKQdogLWlMqS/fiNLjwfjQPKWbs9y5esHiz8b4/EeU6y6LLRY?=
 =?us-ascii?Q?XLm+tNSIUEyXcO6vD66k8/w1aeQQGRunt6TLZVCudXH8G9nsFTWRX2yuI6U1?=
 =?us-ascii?Q?bmNFHUjdS21fsIAtv2wDyiRYchOudAHlamJ8dR6KbiR0VQDJo/+ku2unuu/h?=
 =?us-ascii?Q?J7+19DXF/kT/iKsP07d5YDxMacwMN6lPYJs8ixM3ivDEtCUmJwsaJFszUAjq?=
 =?us-ascii?Q?3FDG5zmWzxWXSMtQ39i6jRasDsRkGnMvWbTQgS5CKcJtv2/UDvhLFdGQkOJM?=
 =?us-ascii?Q?QjUUw0cp+vpfhulPcJVFnvPmVzCYK3E50EcGcgiVu0VRtVkfgcDNy2esF2zB?=
 =?us-ascii?Q?dox9JFrvkASqiB/qTxq1/IPmIHN0smJWnWYwi/J7O70/c6/n50v7waYwRUNl?=
 =?us-ascii?Q?2veUe78+MWppAaHizeSrUc+kQ5FO9NytqMoOMXlAVZBVzlMR18Vp1BVfyf46?=
 =?us-ascii?Q?2ZgvWojeCMMTTQ1AR1SM9jrmwIJnWuCfR53xjAMpTI9XTfDUVU/jvxzm3zs0?=
 =?us-ascii?Q?UHp3CaywN3l6v13j4MqFKQykq8uvSjfb7+b14WL2wA7G6hgQfGbxNrkrfFOr?=
 =?us-ascii?Q?h3zb+Q=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94848b95-ffc9-4dda-1ed7-08db2dff0f29
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2023 13:36:09.9569 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QIodjEVyx440EQR+vuivVacYz/ZrOKI6nsE7xlZo7+6SBdKQcNX8MaZuKDh+V2JVlz11+8MXzrCDorykSJ3yQBRM74QQQFwFgqWKPLhqWuY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB4428
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nzreboyBZz4NOspZqKXoa7FRrMXqgpBIQaZ+X8fLNdo=;
 b=NKBs9keFw9CivRT1c7bC4bXSnz8F/NIFDVrNUOwgoYhvbr1+Sjwb57xKIKcT22KE18tyzK3x+9PyapnngTA+zeydtnswl/xuglfcSB224sZ2iUWWxLEfv4VBGYDAY90WbYV0Yhwl0OvcUGp7oQBeyUu4t+Xpo8c1i1MDlM9PSyE=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=NKBs9keF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 4/8] ice: refactor VF
 control VSI interrupt handling
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
Cc: michal.swiatkowski@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 23, 2023 at 01:24:36PM +0100, Piotr Raczynski wrote:
> All VF contrl VSIs share the same interrupt vector. Currently, a helper
> function dedicated for that directly sets ice_vsi::base_vector.
> 
> Use helper that returns pointer to first found VF control VSI instead.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
