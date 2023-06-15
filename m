Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C40D7316BC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 13:34:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF19A41F3E;
	Thu, 15 Jun 2023 11:34:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF19A41F3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686828895;
	bh=KbKWaYHvXnuUkQzacDYGIa1vJ3hx5LrD9R/CxKSwZQM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qD1JXFlhmNC1+YdBNMvkh83OXLFOTCaG+aLioTcTd2pv+T0SKX4ZP+ji/44GMvdwZ
	 mbR51XxOVnB4yo8yIaXSRJErn/AB3cCowMlIktQfVrI8eanyFvhL/WdmKakOIzHff8
	 Mc5/qNuBf/hyAU6xU7ThG87nm8hb27IAHzA/+NA1WXqkJcFiBCE9FkIxnhbbP7lLCE
	 dh/J8KEOsrF1hQ5/TCivFZvQ+Crgv7V4TFxy6SPq9aDqxDiKUfFoLYFxCwfuWYs2NM
	 85vs0hJYqKuc9fixIWYtDCyYGvEf5VwREbGk8uMarw39ZVLB7E6mgXtCla/rq4QkWl
	 7cCopXl+sQCZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8JkVnraPTxdr; Thu, 15 Jun 2023 11:34:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A09D640895;
	Thu, 15 Jun 2023 11:34:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A09D640895
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C176B1BF276
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 11:34:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A777C60B26
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 11:34:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A777C60B26
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v0B-9FWDttO8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 11:34:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78B7260B0E
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2126.outbound.protection.outlook.com [40.107.244.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 78B7260B0E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 11:34:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UGx6dJXCBoJaU/+OqkQCFb9/QXhv4mW5L8vw/O7o+YAXknCnifvLBJE+9RgBcnDnTPD0qNKuo+wCBxYZqzI0r2k7UF0xmEpx5Z4R1qvRJuCHeS4RF6scbcImRpiMfM5G5GMx9/9KdmeSYQUnGC109jDKxslc9EVs2IDt1zCqn/KxISHTowoqIoGeerNGqeCe9JFrZ0MC9eMoIsaG89/3lnfqlc4TQT0lzURDy4E0Cf9UHLawNGXjzV5sHHMFddyQ70H2mJoq9Uul2oCFL7lRyvqMZqZH46QyCLlRLOhras7vefbFHgGnveG4uP7RDyx4xN70F5ZP3z4A2SVVsmvz5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YHFfCanPKi1Cf2VFEG1yz0UvZs3j/9mzKLoho5SUCQo=;
 b=jqQZo9yaHZGx7f0X2vJUiwcYDuSlGN2lbGBeA508dbn+DhuEWecFyrDVAoGyNAvi+IHD8gy1JgrRNndjnmAeEQJcdQnw4s85M5rhD8IItV2K1lonBV0w5TkmzdyRJ9jyYA8aVqimLVGa0ZT3ZziaZz9HqtLa12pW5jlHzl1hN5Rj4VV2ywF861v+N2rCylVbx6JNMVbc1tL50O75HF/lQlG1RrjVmX+p0LEHytE0uFe9BkeAh45V99EVy5Jqf/8VMa+hOwSVANTg6Pt3h1a3ED6DLFZ6dTmCKN7jgduVg/qLHtPVNYoLYCSunmz1aCPFHSJUXuUbzUfY6rQvdbD84Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by PH7PR13MB6267.namprd13.prod.outlook.com (2603:10b6:510:24e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.39; Thu, 15 Jun
 2023 11:34:47 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e%5]) with mapi id 15.20.6500.025; Thu, 15 Jun 2023
 11:34:47 +0000
Date: Thu, 15 Jun 2023 13:34:40 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Piotr Gardocki <piotrx.gardocki@intel.com>
Message-ID: <ZIr3UGQv37C317VC@corigine.com>
References: <20230614145302.902301-1-piotrx.gardocki@intel.com>
 <20230614145302.902301-3-piotrx.gardocki@intel.com>
Content-Disposition: inline
In-Reply-To: <20230614145302.902301-3-piotrx.gardocki@intel.com>
X-ClientProxiedBy: AM3PR05CA0099.eurprd05.prod.outlook.com
 (2603:10a6:207:1::25) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|PH7PR13MB6267:EE_
X-MS-Office365-Filtering-Correlation-Id: b3cc5e6b-626c-46b3-eb2d-08db6d9485c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NwcgN8C9kwuzzfvwUvc+Sd88FiN7aQ3ow/uuhGdW0TGQG7E5Y9pARCk3nDbfC0W2Uq1bO3vcm8O3owkMhFuypaypTn8e1DfwOMR+SecKTwztERqk6hUpQUcCt7s5qsyyGmYR4cDemyVAMuixiz/zDh5Cv2+GmXrAIWf/RPoZB8MSoWaBdw++w6DpjV4kPL2s4xOMh7yCwCQ5CpFVSXT1qhaHDB7duLS8O+t+SnIRYn0jbXWAxGGTER3eKex+qCaOom5AsftMw804M5m4V76vLJ6h8b+x1zLG15UYAb750T8h/gSEW2dDd20ytCXqcc0SDECefbGQ+QtBIsp3r8ckTa5nFDPj6EuL2/1aBlkMiBL1UzZ8Z7Ky/IUGGC40OlaKPdsP1XtNEvUuAgSmrl25CC8ZB3w6oxhLnPPEYSrZMV3Jba2TB4GX794VRxbHw9/DvT5/sgnAzE2bQlEyxf4lK49xzTtt6Lng4EVt0c2YflAtVEjNTe/jDPm22PA9qORXVDz2agie8VtsyuUCENEnU9xFCOeucGBr2B7IU3LTGa03yHFlMw/rC2L/HK7pNn8E+yiRcjGGjLGdIpaCRZkQQvaZRQPrbJL52Oftfba90es=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(39840400004)(346002)(136003)(396003)(366004)(376002)(451199021)(66476007)(478600001)(66556008)(6916009)(316002)(66946007)(4326008)(2616005)(86362001)(6666004)(36756003)(6512007)(186003)(6506007)(6486002)(5660300002)(44832011)(7416002)(8676002)(8936002)(4744005)(41300700001)(2906002)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VAqchk/u1MKhE3jk9LsSBW1FQmoMxb6Gr9JLBoSCzry+V20z7IQ1pEb117zF?=
 =?us-ascii?Q?ErpwZnOWYcSXQJ5luX8IFH1/E2sKaqAKiTQ6T0pwITkS4FYx+9nLyP+VfUr1?=
 =?us-ascii?Q?9X2YRY4gt3QZ0U28Ft1orxhLa1bFuNxXhNKxVVZg+V+kqkw7meoF1DMPWAZj?=
 =?us-ascii?Q?AEKu8GxKIpCqpDKNLTJR2EOWBj2vdLockvOZlJMbS/u0KPLB5BgKPp6dVRj0?=
 =?us-ascii?Q?9gFLGMPCqIi+l2LuzAqkhkREUn18x0FmwuU14YCatIOaGbk0trgtLe9CzayJ?=
 =?us-ascii?Q?82dic+XCY+JHsMHlMo5jT27SHcd/NCPPunwizubPaDWmHHgVxRO5azOmXaWM?=
 =?us-ascii?Q?Uke10A+8CjcM78ANsobOaCGMt7+mSGBifOzKDlptBtX3vpdXSrXqXyHwlw6B?=
 =?us-ascii?Q?dORBOqKm+1tAnlFTApURM8tr5Gh9rgePb5iilBiaL17zq4Fevbt2jFGYCnDD?=
 =?us-ascii?Q?FeyFswwSepbKqg9p57wVSRGu+BoJcYOtkKAPmHzY1yxpaW37uhHjTvzZOKvy?=
 =?us-ascii?Q?8yuApmQeydqcPdSrD/68upKOGtdnN3tAU2CcTq/n5O1IbBT+Al+M+ZRDTK76?=
 =?us-ascii?Q?AbDN/P5YueuKoXOMqJfZQTwlUxkqb3NaLKsyJf5MxlEGMo1ePzLPH0Z6h6EZ?=
 =?us-ascii?Q?LzU65gy0XoVy9dX4u7mZfQ3+2Kyr9e6N6O8HZciVwlBAKFgffxp4Z2PoMxyc?=
 =?us-ascii?Q?FwPEQHe25tzdZOgTR5gzw3e5Wl2eWIujnuP9B3yYX4Bbt4kCSn7Gar+Qoz2Q?=
 =?us-ascii?Q?U1Y4qgV34c1WT1urHdmn6GRFHFhsvKGUxbwRFeb9bDup1hQEO8j+rKYsAewE?=
 =?us-ascii?Q?oI5QLLuUhBjjsjvysg7F/FNuX/4o3bkm+YlAJjMKdk2Hl5AdY+YqqUE1IcMB?=
 =?us-ascii?Q?+euFY10AbwlbkNliG0IwhrsjpyDwurciaW8QMVfWaR2MXMqA4f2+Qtj69uIM?=
 =?us-ascii?Q?L/vTpzpFhrvsKVvVDH08LmXM3dPwG3vtk2FgNSLDbI1/2InRNRPjkolRsPLV?=
 =?us-ascii?Q?hOj+lp7rxIcxQKr3PYef9EqCcXhcO/S4fqi8J4PDmBPI6V7yidfq779pJhcc?=
 =?us-ascii?Q?bczgNkPayKhsCmpcC23NGWs96RyKMoVkUMiMbqMrb9qDU/Dw/xhYXiBv7RTX?=
 =?us-ascii?Q?v19eDMPZZSHgpnm0zNHwLakeOs9iyJophWpU8aeHyTBSTQvBH/x+eiA661IW?=
 =?us-ascii?Q?HVdHFxs4AcugTD7z3DCO4kP7nVtVqEGl3xCpUtQfy6fSpALiVdbaNO5FoKq3?=
 =?us-ascii?Q?b7qQgYVl0LvySVvO/Kjyg9SFGZILSbRQXk8guYbHFNau62RgfjBOfQ3oyqve?=
 =?us-ascii?Q?K3n0NvZdlmmDMLqUW60UW3RSi+wghZVASrG1/O89j3yBKdC0sCbukuCz/PTq?=
 =?us-ascii?Q?xgdO1KpVh8SGDMXciZ3G+U0bglaJ56ys10oXzIrwq+y8bOGf2BWLz5Wr6GtN?=
 =?us-ascii?Q?sANNpZ5heiXNhsQ3dm1Saeh3k/mJ67zlfMxMXWUMpTWX9nIxnIoHGiIpe3bm?=
 =?us-ascii?Q?11jCXNh/oIYLLIKkxKeJOOO7Oa/ZpZLAUSGTLABTZnNq80Tdi8UoklV8iaIn?=
 =?us-ascii?Q?nwzdJAKZGS8XgVXeanYtpWbHnJntFsf3AMkP7aLrn2jfHKYteQx7ifY38aww?=
 =?us-ascii?Q?Hxv5rEkXC4PeacNU++KWMcyAtUjBD+O6k/5o4LAz9L9Im5+EfG30mda444/y?=
 =?us-ascii?Q?wpmumQ=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3cc5e6b-626c-46b3-eb2d-08db6d9485c9
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2023 11:34:47.1347 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a2DlzngS3+M4bfm3tIe+EfzN+gzTI847gY/XkvER/szZBqyoLWgyJ4dFGW5Kp7T9i7EIdd67ABNBepCcNUtZsBoaIMtlufYhAl2NnSf96A0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR13MB6267
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YHFfCanPKi1Cf2VFEG1yz0UvZs3j/9mzKLoho5SUCQo=;
 b=AMKqO0SxfBn54L9JRpPOXwe63fDnZ1xkhnGR5GBkz5nnQCHKhc5vCN+ZVwyzAwoIEx4ykxSEDJbjwM4DkivBWGt+ZE05XV9wvbyOlzNUEEP0cYAqpsk2E4offiUoI+a/RWbvpSjaGDkJ5pSlQLSaLEPyIdJOXksDjB7WMY0PTZ4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=AMKqO0Sx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/3] i40e: remove
 unnecessary check for old MAC == new MAC
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 14, 2023 at 04:53:01PM +0200, Piotr Gardocki wrote:
> The check has been moved to core. The ndo_set_mac_address callback
> is not being called with new MAC address equal to the old one anymore.
> 
> Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
