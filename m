Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E49726E4717
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 14:03:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 687FD606ED;
	Mon, 17 Apr 2023 12:03:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 687FD606ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681733007;
	bh=nnb9R9DgfCqDOiaMn7A7ao9D4BvS7y9S66Je2gZvtNk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PlsBHko22JYTTkNNmgzsKd5eyWqnBPp7F3hmXsCTrn71OhF2edFKk+fGZzeeWRTYd
	 C8sfQEGepZknSxJUiD/MTpruSQJS9ncQZSUED/j9ZiJXi5ZZVsmblHGqwkX7AyeF01
	 F/AVIzaaVXCnyMMTj42RqIlEOLPdwTV89sT505KNnZfPQeBDBEVVK6izyGds20Abpd
	 J2jCR9CShwHrKo7wVQFJVMxOA9YOs9+dOl+qXe8qdKCZDiJisOGXYV2xLO8ozbDUSc
	 /z4V+yAj9FIcJ4u/DYpmCH5YhXcrsJJUpHXWwqcZHE5tdezGFeVjevotDFLxgTkZJn
	 67OfTFTecytGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5wehE2ZZIyVf; Mon, 17 Apr 2023 12:03:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02CA061424;
	Mon, 17 Apr 2023 12:03:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02CA061424
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E0D4E1C415B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 12:03:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C490D61429
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 12:03:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C490D61429
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FqiIWo8ZblIF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 12:03:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BC5461424
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02on2103.outbound.protection.outlook.com [40.107.96.103])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1BC5461424
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 12:03:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TUM4mNQRcaWI9ZQkZqe7vXKc4QJ/djaxlacTrj9B9MiFqwPglSSqxOciTwaaNrWxFHGG1dO2dcQMIRTZrTz2E6nxEpHQvabnY4GbVDdDux9fKErfIVc1P5Iqn6l+6udelYa3zkDJV3WuLHcDFDbkfFRZJMwzWZJF362LYXGGytnrZcNO8kBOxYe2WF/IQ2F69CvM/U6GMAP52Y9KlF6XBvX4A4vzhHLcj6GJ4WNneEaLPpIV09n3pDSyzkf/rfUeoKlYk9eAMXWxL0cMOq0QqgDvoMdjlGCv4dmQXYUjvSrpE8g529iUog9TYr91Vx4rm3jBNug0KqdNpu5fw57aSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wyAOupHLZeHpzg87kjf/BKJkwPk4AW/28CRePlo+D90=;
 b=H37BrMUll3lROHSmmV1H/7TpQ9QCJAThf4ccui8s2txtIXVyI6fmDa4En8VYiJe2a1mX2W9Wu6h4Jry/6ohpHG9p5KDuZHQKvNnJqn0R1z9oUPlYZNyi6MpVZKPAp61t/0fiTup1IFgEwf6uhzh3DrTWoLAV2pRCqmQ/guLW5GlOF/fRk5H8n7t+VIejDXYhdBEOvAa2k0Mzun9eXuUb35G8accuapuCcL3A1Acuyx2segJMhydsX1cwn9tv3/W+pa/sRhPmLQtPCPhyxONUeWFHURmlcUSnWTEqwTdaMw30ElAqXQ4D+UTwEq/7zuDKTa1Df6YMN7A2lBik5Jqg4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CO1PR13MB4776.namprd13.prod.outlook.com (2603:10b6:303:f9::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Mon, 17 Apr
 2023 12:03:14 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169%5]) with mapi id 15.20.6298.045; Mon, 17 Apr 2023
 12:03:14 +0000
Date: Mon, 17 Apr 2023 14:03:08 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Michal Schmidt <mschmidt@redhat.com>
Message-ID: <ZD01fKpq+kL25Jdn@corigine.com>
References: <20230412081929.173220-1-mschmidt@redhat.com>
 <20230412081929.173220-7-mschmidt@redhat.com>
Content-Disposition: inline
In-Reply-To: <20230412081929.173220-7-mschmidt@redhat.com>
X-ClientProxiedBy: AS4P192CA0006.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:5da::7) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CO1PR13MB4776:EE_
X-MS-Office365-Filtering-Correlation-Id: 23aeac8e-31d9-440a-9d6f-08db3f3bb915
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CBLcTWV/mwrfbnDyuh9EpoTOlxN1Dvc588mp9xR1OzFbXDZsr8zRxZumkPMAVTAE9eqOteS4B5bSdgvOVBBm3RPJqQshaje+FCVsB7j4V2JnqX5CivaVxg2QCW3eNxjP84d6H0vLfSSyly+7nWGTVO0iADG/3qqYXmbeq+syNeTYcwwRKPfiCcpondUmE9FZyhd7Y9wlL1xRAsuIlV7b/xVMRMdSPc7ObowhNlNKdPag3qwDwCgJl95ktXADarIv0hUe92SxR0XaZFYeW3D14fi29uXtr07cdtgUvIDH5slv3XSSfey9McCdC6BX/wFT4WADJZrllqLWz6SEIMjh9nxFgv8zH/yzRrEvdNMyhifHIe9emq3Sd5ReX8KNaqlkd8mY6hYxmhfzfvxc3CDifr5IdRWgvtz/8vqY7t8RRkgEMDl6BRmVinkyXEk03pWdvde16ngmtl7Tiq87Gh6QvSBUKEWMOG6b+9IgKcckyTUIKP+8LbtDJKdK6Sk8HvXzNPJn5xGgpJsNxqAgvLiTDWJDNhQMMQmEQtqVJhpvT9Ok6nmHt4IhpaSfy+EUyPaSA8Zsin90cRiK2ohY74sC33xJBCpwuwRFrUsIX/EWAI4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(136003)(39840400004)(396003)(366004)(376002)(451199021)(38100700002)(8676002)(8936002)(44832011)(5660300002)(7416002)(2906002)(4744005)(36756003)(86362001)(478600001)(6486002)(6666004)(54906003)(186003)(2616005)(6506007)(6512007)(66946007)(66476007)(316002)(41300700001)(4326008)(6916009)(66556008)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LOgULRBQl67iwwDXDGyQAfxIjM7EZDVCAJhMkBpnl5TZZHQwjgxCY8Q9lTkq?=
 =?us-ascii?Q?J897ZcwQAoJbtJZaJlZKhQ1PJV3XgJiTDDlLXgrohcm+ZV1HYwrp0GnwUfXh?=
 =?us-ascii?Q?aC6TdmWCo06o3CDM+aJVJAGmxq7yhajcypjPC9sGec5mbefwVqEUOThQ+VkE?=
 =?us-ascii?Q?zgjbytgC7eKpFuEFNCsFUNlRTlvJeZtCSP4aSLzFnV/unYQhE7tdWlbnkiLp?=
 =?us-ascii?Q?Z9WBEaISte+5F8zg2COyk9s2qjHiEnS/xqr7/ETMle3iGmjSdf6vYOoLqfVo?=
 =?us-ascii?Q?qeoYMn6qH9OUvfQRnMfWxc+nO8dzaQSe0ONaj0ZW+NgWHE2QZ8pYmRhQDLbo?=
 =?us-ascii?Q?VGxhg0xCNppyg+2oRSk2gdXHWie6vEeqMibSVD9ZTngfZ/1M29GvUyyRUaiy?=
 =?us-ascii?Q?MRuQKoNEIKD6KV/6zon09hx43X8jeIvbPNGB7+x3xNGbS/ooXRj0szgOOI4H?=
 =?us-ascii?Q?f4z1rFhE5au8a0+dPniYkgLbyz4N4SozLi0w8MC2S2A6QcAa+fBwllgZqkfQ?=
 =?us-ascii?Q?UJcbtizlksVZQdsjWg2XQk+yoIljp0nqv2rsB6sEFzVVppdcU851N2VUHQve?=
 =?us-ascii?Q?p8oABAvhwfhBq/Kw/95NFNDrmh3uRkVpDT1XpAAzNJmvp17uC6IBysg1OxrQ?=
 =?us-ascii?Q?RxzT0WGsjHOlA6DP55tJ7BukEiJ/Gt4Qt1mXpkUqQ42qXrCnI0OM82phZgfi?=
 =?us-ascii?Q?UMYy+MLFm+/+RKhxWI7xF3W+KFQ+xPSOGo38A5MF//5wS+HdF7Re+1+qQBWs?=
 =?us-ascii?Q?ULQb62Pste0qIaasXoOUAqRiO4R9T1+Yi1b+ILTak04u4qA2THcpaH57fE3b?=
 =?us-ascii?Q?kfInlyOBSpaom78TZBoLFHLrbHSSP8TLDm8GGRyhBqnE6zhKhaavbKvI8Ofo?=
 =?us-ascii?Q?ZXlwenx6Y8o4esghn9y1UxT3taQqdtJPbsHyECIQtKkjeC0tdPDlm6+QMp5S?=
 =?us-ascii?Q?UvieftuDrJwAUCbbvWqJGbFLEQ4JA16W0aSE3neM3s+yyda4PcLE/aT7qtut?=
 =?us-ascii?Q?aK+AVKz1jyMy7NzKrXF9MrndQv09w+VUtP1RrqYzPNfg6HJCt0jBbSN7+fMD?=
 =?us-ascii?Q?VzxgAH7KpHH/mTQACwNTwYjNMoTM0Cw2raMB3kh9u5qFaSfykNCgDRVKiqgm?=
 =?us-ascii?Q?AH3K6AiMGiZz5kmWRVfDfbA7mJtxD/IeKwYgjc2E9oDshQCNSzNbC2nE6HU3?=
 =?us-ascii?Q?O7zc5kWUNdSSBd/8p0zqS2Y066DXad0Ue4+b3ZQgXMsP6a9c16YBy+er8s6F?=
 =?us-ascii?Q?lcNCCEtWTREY0ODC22DftpmrqPYnHSjVNTKyNoEd4wv517/a4TNmqmcM2hvs?=
 =?us-ascii?Q?5LO2Pe9MVmPCwOTLNgIM2BOe7n0KQhdcu9mUeO9QOHMSn9ccsBhh0RgjQ8pQ?=
 =?us-ascii?Q?XYu+FAquOwrab2LgEslAZcDYuz95UIM/IiWdLLfULRlE1ha9qGHViiri939u?=
 =?us-ascii?Q?0hE8g2T6OsnCrsUv0Fh8WObwKJYGh7q01YjSfEMAP9Ecgb/7kqRpwhPCTBbK?=
 =?us-ascii?Q?CoZwe3GniCjti3ME6oMXXYLtv/MsVZ+bk9B4XS1nlEvGD8Gke5rKyNEXmPKS?=
 =?us-ascii?Q?+s18loS9wBrm8jfGPykO3iumpUcZzlEdTJO8zxT+de/3dfKXQl5LoFyuxBqz?=
 =?us-ascii?Q?K4m9zJljeI3nCfTMl0R1JdSTfCJ+YHHHpIX1gd22qWu3Vl0B4zw9MtJrIEPN?=
 =?us-ascii?Q?o57bYg=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23aeac8e-31d9-440a-9d6f-08db3f3bb915
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2023 12:03:14.5138 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z4pdqpDBHnzwxIOewlRn+jWQSgDaDi8zFTNBFDQUPniaIWv2mgta02MCNTuV8fduPoHpztzczaRNb+o88TF+lvRw0R67k+NXHZz89q8WhpE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR13MB4776
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wyAOupHLZeHpzg87kjf/BKJkwPk4AW/28CRePlo+D90=;
 b=trIuhae2N1JsuFnzxBV2v+FWsUVhSbJ24+mg77hIyPTBA3TtNWdHnCgiGLCqQi0K4uD+Ezsa0p4M4hGRBs6HTSz7qYjijkX/OJnXREIF6W+jnrtvpjyToUq12cbnR9HjPeqDGJ0WjbQyGB4lSH3lpDD1bj5ky6vlwRg5RUzdHCs=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=trIuhae2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 6/6] ice: sleep,
 don't busy-wait, in the SQ send retry loop
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 12, 2023 at 10:19:29AM +0200, Michal Schmidt wrote:
> 10 ms is a lot of time to spend busy-waiting. Sleeping is clearly
> allowed here, because we have just returned from ice_sq_send_cmd(),
> which takes a mutex.
> 
> On kernels with HZ=100, this msleep may be twice as long, but I don't
> think it matters.
> I did not actually observe any retries happening here.
> 
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
