Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D933B20CC93
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jun 2020 07:05:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 18B51220DA;
	Mon, 29 Jun 2020 05:05:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8iqWFp+9guda; Mon, 29 Jun 2020 05:05:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 35E5325D29;
	Mon, 29 Jun 2020 05:05:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 09A111BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 05:05:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E795D25A5E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 05:05:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b-881zdvPhSh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jun 2020 05:05:10 +0000 (UTC)
X-Greylist: delayed 00:17:21 by SQLgrey-1.7.6
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr00119.outbound.protection.outlook.com [40.107.0.119])
 by silver.osuosl.org (Postfix) with ESMTPS id BD9EB220DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 05:05:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FaX9TTXg2V3pKPG+mB0tpxEnhmnH6QQ2iXxdKjhtc8H3Q+akokE6T+JLShmp49N98KXfzMPT/fLwjFgwyD+1XUTbmgCea7+QXL0Bn5pBay2diMTOtLs7Of56DqTl/QqdrXqnJRkpBVuvouW09BYW9kyMS6w5q/aTIQLtOcB0rKEJRnL75azkyo55zgWtPChTItupQRT7KP7PTNYRaLPV/NOYJ7XzslqAR3XwY2gNp2H5dygJgiojFN0WSKfYAlhULXUu40s6E7qMVcnudX93r73zO7MIAa8eP8or/0vn/PZ4X2cOJ8IW/dliqQfZpDhdO8O084uf9r/02sF8nI1L4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WZgLp/PYdK+/m0a+S6TlGyFcQ55w1+ylP4gfFu+JTYI=;
 b=R9g9g2M24DlnT0v2JcRcx7m67CGgZ4WjvqT7oHYHmkQK5TvloH0rATuSkxCLHqEJdojwBWR4DTs1VCRwPm4kcXjooIHLPAZHtgyinJPpOSIvZXqAgBtQvP/ImIV8++vYn68EY/iYf6RgQdynbZ4JZiMOASsqUXFx6EzTJpIq7+F7Xds+Co998srgUn/CBKgRs8cEyVo+Ft/WqhqcT9nYWtBCVybZ9suQRafMMMfxeViTeCYG+Hoaz4gZXATA9UeOUz1KLyt1SjMZuV+ihDIfeu+KOmHLz5g4Wj3WxXBc/P0sefvhYoLxAOu0wX1Ro7p0v66aRTRAimCnHSU0JtUKRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=voleatech.de; dmarc=pass action=none header.from=voleatech.de;
 dkim=pass header.d=voleatech.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=voleatech.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WZgLp/PYdK+/m0a+S6TlGyFcQ55w1+ylP4gfFu+JTYI=;
 b=EezNjene7NwP71HMzqwxmjVIgMhGEhGe3535CDFPewC9qxzF1Bytl3Y4JNKqkF6LPHVKe/Cwd5CdOrAKWIoqNjNhpoWhElytOxDjriwbR+WK3I0fORQHjmw/SfZNCErCcw4w1lFUy3xNy8+RO5ypL/XK3xgZ/t3AQ7aErltTOO0=
Authentication-Results: oracle.com; dkim=none (message not signed)
 header.d=none;oracle.com; dmarc=none action=none header.from=voleatech.de;
Received: from AM4PR0501MB2785.eurprd05.prod.outlook.com
 (2603:10a6:200:5d::11) by AM4PR0501MB2851.eurprd05.prod.outlook.com
 (2603:10a6:200:5b::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.23; Mon, 29 Jun
 2020 04:31:44 +0000
Received: from AM4PR0501MB2785.eurprd05.prod.outlook.com
 ([fe80::39a1:e237:5fef:6f39]) by AM4PR0501MB2785.eurprd05.prod.outlook.com
 ([fe80::39a1:e237:5fef:6f39%11]) with mapi id 15.20.3131.026; Mon, 29 Jun
 2020 04:31:44 +0000
Date: Mon, 29 Jun 2020 06:31:43 +0200
From: Sven Auhagen <sven.auhagen@voleatech.de>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20200629043143.iz4lxav66ksmqbp3@SvensMacBookAir.sven.lan>
References: <20200625155014.6zwfoqqyhsvwu2gc@SvensMacBookAir.sven.lan>
 <20200626094646.GI2549@kadam>
Content-Disposition: inline
In-Reply-To: <20200626094646.GI2549@kadam>
X-ClientProxiedBy: AM0PR03CA0105.eurprd03.prod.outlook.com
 (2603:10a6:208:69::46) To AM4PR0501MB2785.eurprd05.prod.outlook.com
 (2603:10a6:200:5d::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from SvensMacBookAir.sven.lan (109.193.235.168) by
 AM0PR03CA0105.eurprd03.prod.outlook.com (2603:10a6:208:69::46) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3131.20 via Frontend Transport; Mon, 29 Jun 2020 04:31:43 +0000
X-Originating-IP: [109.193.235.168]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3915a772-867f-4b7c-0606-08d81be553c3
X-MS-TrafficTypeDiagnostic: AM4PR0501MB2851:
X-Microsoft-Antispam-PRVS: <AM4PR0501MB2851050C43882AB4340C8417EF6E0@AM4PR0501MB2851.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-Forefront-PRVS: 044968D9E1
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3O3W753EhpCu61hTYffgg573O2Zh1E4bXTu/pxyjpOiHrgLT7t0wAvmbAQRD9IlyybRyTuAroDpv0j4plRtAh1o2D6Z5i+RcO6ECzbxTrUt7GGZY3E7bB9Cj/tpyrOjiZP4Ez20uWwBgD4EfL5dZSeb15qAmZs6UBIWWq7T3/V5NwJBHYH3nl0n4GThifRE6Bd8afuZITOfFnR3N7wvBc82wm+GwB1dVgWr9FHYXOiPgyZDYTvmV8imEPhrq6wWoCRyKBV1HxIvuy2BOP2ZYFygRowINHE2I6T4LUcc4Alngq0qEVh5RSbZnq3XXCwyE/2dnk6MRdkWX6K7VOjHRvQtqY1bnWE9cXjErR3eof6PHiAMaNWSjW4Efby1bNJPdgwC0VHNh8IojBD3hHhb6HA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM4PR0501MB2785.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(366004)(136003)(39830400003)(346002)(83380400001)(8936002)(16526019)(55016002)(186003)(8676002)(2906002)(316002)(956004)(44832011)(30864003)(1076003)(26005)(6506007)(4001150100001)(86362001)(6916009)(4326008)(9686003)(45080400002)(508600001)(66946007)(66476007)(52116002)(7696005)(5660300002)(66556008)(966005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: Pc/+UGS6dl253pLkEvWGYjOenCk4vp9r+lz6gaffYsX/LxfHYQAFzdWpUe2cyUhpy97W6LrgpKblrLXPlZhC3G5UGUHQNCdUY7tKlbGFRt77HZiEgh/u0XDObDCK1jKyzcyTo9oYhvi3eStvRAKBD9xAgGa8yThjM6OV/Rxnmb7XcNZE/gcGL3m2sRTeyaLvw3vBM+QdhsY00htzmN75zfUFlQilpj6uGBRtwMRPglNGGFu3d55xJgPhQw+PhA4oajYOLMfPCqBWrALLFR5NTwUX4khYuJQez3rZVOkGKx/1S+rtdnlvLGmzjoocOuZ+IfkLGaHSeIgPiCaXnDwannct1HDsmQxj/hgrFA6xMWJaHPgkP7zL+/6askIhy6ZJ3lcKZUG1o3I/jEZdehAd1bpyqAzhHYF2pW6RUZdXrThgs/s2CsEu4HcG9S3IGKRKFmxejkhpagfWFiCU3WNQmQyiPxJR1B1+2nEwMcn2gSa/4QPVgrlAJADRn5a7fRhB
X-OriginatorOrg: voleatech.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 3915a772-867f-4b7c-0606-08d81be553c3
X-MS-Exchange-CrossTenant-AuthSource: AM4PR0501MB2785.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2020 04:31:44.3414 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b82a99f6-7981-4a72-9534-4d35298f847b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zjtIZv0hExClbEzJIoyuEXZrdZuhQ9ANyYGmE5TbxCKN1iEY0CkvVLmRElj57pnabI2ZcvowLHo7As7CG1jCwwXbO+S02O1NUmnYmac7mUw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0501MB2851
Subject: Re: [Intel-wired-lan] [PATCH 1/1] igb: add XDP support
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
Cc: kbuild-all@lists.01.org, kbuild@lists.01.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jun 26, 2020 at 12:46:46PM +0300, Dan Carpenter wrote:
> Hi Sven,
> 
> url:    https://eur03.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2F0day-ci%2Flinux%2Fcommits%2FSven-Auhagen%2Figb-add-XDP-support%2F20200626-052800&amp;data=02%7C01%7Csven.auhagen%40voleatech.de%7C3bcb90371c2246b3a93308d819b5e47c%7Cb82a99f679814a7295344d35298f847b%7C0%7C0%7C637287616579607917&amp;sdata=t4zUCM7uqCg7Mm7JUrBTz1V6wI7Mc%2BuU2a4qTy4cNeo%3D&amp;reserved=0
> base:    48778464bb7d346b47157d21ffde2af6b2d39110
> config: x86_64-randconfig-m001-20200624 (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-13) 9.3.0
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> New smatch warnings:
> drivers/net/ethernet/intel/igb/igb_main.c:8776 igb_clean_rx_irq() error: 'skb' dereferencing possible ERR_PTR()
> 
> # https://eur03.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2F0day-ci%2Flinux%2Fcommit%2Fa15be27894f18e2bdb3b0958b1132af85e34e61c&amp;data=02%7C01%7Csven.auhagen%40voleatech.de%7C3bcb90371c2246b3a93308d819b5e47c%7Cb82a99f679814a7295344d35298f847b%7C0%7C0%7C637287616579607917&amp;sdata=tHk3XMaTx%2BMS0ISFCKrlOt%2FeQr4CfD5pV3IST6mAzGA%3D&amp;reserved=0
> git remote add linux-review https://eur03.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2F0day-ci%2Flinux&amp;data=02%7C01%7Csven.auhagen%40voleatech.de%7C3bcb90371c2246b3a93308d819b5e47c%7Cb82a99f679814a7295344d35298f847b%7C0%7C0%7C637287616579607917&amp;sdata=mD5sv2qwST26MvYHD2oQE8P98NDC1AaUsbIzaZC1kPI%3D&amp;reserved=0
> git remote update linux-review
> git checkout a15be27894f18e2bdb3b0958b1132af85e34e61c
> vim +/skb +8776 drivers/net/ethernet/intel/igb/igb_main.c
> 
> 57ba34c9b068f3 drivers/net/ethernet/intel/igb/igb_main.c Eric W. Biederman 2014-03-14  8697  	while (likely(total_packets < budget)) {
> 2e334eee9bef61 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8698  		union e1000_adv_rx_desc *rx_desc;
> e014272672b964 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2017-02-06  8699  		struct igb_rx_buffer *rx_buffer;
> e014272672b964 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2017-02-06  8700  		unsigned int size;
> 1a1c225b946303 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8701  
> 2e334eee9bef61 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8702  		/* return some buffers to hardware, one at a time is too slow */
> 2e334eee9bef61 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8703  		if (cleaned_count >= IGB_RX_BUFFER_WRITE) {
> 2e334eee9bef61 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8704  			igb_alloc_rx_buffers(rx_ring, cleaned_count);
> 2e334eee9bef61 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8705  			cleaned_count = 0;
> 2e334eee9bef61 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8706  		}
> 1a1c225b946303 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8707  
> 2e334eee9bef61 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8708  		rx_desc = IGB_RX_DESC(rx_ring, rx_ring->next_to_clean);
> e014272672b964 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2017-02-06  8709  		size = le16_to_cpu(rx_desc->wb.upper.length);
> e014272672b964 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2017-02-06  8710  		if (!size)
> 1a1c225b946303 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8711  			break;
> 9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok          2008-01-24  8712  
> 74e238eada5735 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2013-02-02  8713  		/* This memory barrier is needed to keep us from reading
> 74e238eada5735 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2013-02-02  8714  		 * any other fields out of the rx_desc until we know the
> 124b74c18e0e31 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2014-12-11  8715  		 * descriptor has been written back
> 74e238eada5735 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2013-02-02  8716  		 */
> 124b74c18e0e31 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2014-12-11  8717  		dma_rmb();
> 74e238eada5735 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2013-02-02  8718  
> e014272672b964 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2017-02-06  8719  		rx_buffer = igb_get_rx_buffer(rx_ring, size);
> e014272672b964 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2017-02-06  8720  
> 2e334eee9bef61 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8721  		/* retrieve a buffer from the ring */
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8722  		if (!skb) {
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8723  			xdp.data = page_address(rx_buffer->page) +
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8724  				   rx_buffer->page_offset;
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8725  			xdp.data_meta = xdp.data;
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8726  			xdp.data_hard_start = xdp.data -
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8727  					      igb_rx_offset(rx_ring);
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8728  			xdp.data_end = xdp.data + size;
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8729  #if (PAGE_SIZE > 4096)
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8730  			/* At larger PAGE_SIZE, frame_sz depend on len size */
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8731  			xdp.frame_sz = igb_rx_frame_truesize(rx_ring, size);
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8732  #endif
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8733  			skb = igb_run_xdp(adapter, rx_ring, &xdp);
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8734  		}
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8735  
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8736  		if (IS_ERR(skb)) {
>                                                                                                                    ^^^
> This is an error pointer.
> 
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8737  			unsigned int xdp_res = -PTR_ERR(skb);
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8738  
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8739  			if (xdp_res & (IGB_XDP_TX | IGB_XDP_REDIR)) {
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8740  				xdp_xmit |= xdp_res;
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8741  				igb_rx_buffer_flip(rx_ring, rx_buffer, size);
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8742  			} else {
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8743  				rx_buffer->pagecnt_bias++;
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8744  			}
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8745  			total_packets++;
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8746  			total_bytes += size;
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8747  		} else if (skb)
> e014272672b964 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2017-02-06  8748  			igb_add_rx_frag(rx_ring, rx_buffer, skb, size);
> b1bb2eb0a0deb0 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2017-02-06  8749  		else if (ring_uses_build_skb(rx_ring))
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8750  			skb = igb_build_skb(rx_ring, rx_buffer, &xdp, rx_desc);
> e014272672b964 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2017-02-06  8751  		else
> e014272672b964 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2017-02-06  8752  			skb = igb_construct_skb(rx_ring, rx_buffer,
> a15be27894f18e drivers/net/ethernet/intel/igb/igb_main.c Sven Auhagen      2020-06-25  8753  						&xdp, rx_desc);
> 9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok          2008-01-24  8754  
> 2e334eee9bef61 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8755  		/* exit if we failed to retrieve a buffer */
> e014272672b964 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2017-02-06  8756  		if (!skb) {
>                                                                                                             ^^^^
> Should this be an IS_ERR_OR_NULL() check?
> 
> e014272672b964 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2017-02-06  8757  			rx_ring->rx_stats.alloc_failed++;
> e014272672b964 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2017-02-06  8758  			rx_buffer->pagecnt_bias++;
> 2e334eee9bef61 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8759  			break;
> e014272672b964 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2017-02-06  8760  		}
> cbc8e55f6fdae2 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8761  
> e014272672b964 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2017-02-06  8762  		igb_put_rx_buffer(rx_ring, rx_buffer);
> 2e334eee9bef61 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8763  		cleaned_count++;
> 9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok          2008-01-24  8764  
> 2e334eee9bef61 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8765  		/* fetch next buffer in frame if non-eop */
> 2e334eee9bef61 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8766  		if (igb_is_non_eop(rx_ring, rx_desc))
> 2e334eee9bef61 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8767  			continue;
> 44390ca6cb3d4d drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2011-08-26  8768  
> 1a1c225b946303 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8769  		/* verify the packet layout is correct */
> 1a1c225b946303 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8770  		if (igb_cleanup_headers(rx_ring, rx_desc, skb)) {
>                                                                                                                                                   ^^^
> Dereferenced inside the function call.

Hi Dan,

I double checked and this is actually correct the way it is.
!skb is only the error case if the alloc of the skb did not work.
The function igb_cleanup_headers has a check for the PTR Error:

/* XDP packets use error pointer so abort at this point */
	if (IS_ERR(skb))
		return true;

which also leads to the continue statement in the if to go 
to the next packet.
The pointer error in XDP means the packet was consumed and
is not XDP PASS.

Best
Sven
> 
> 1a1c225b946303 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8771  			skb = NULL;
> 1a1c225b946303 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8772  			continue;
> 9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok          2008-01-24  8773  		}
> 9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok          2008-01-24  8774  
> db2ee5bdf5c833 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8775  		/* probably a little skewed due to removing CRC */
> 3ceb90fd489885 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2011-08-26 @8776  		total_bytes += skb->len;
> 3ceb90fd489885 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2011-08-26  8777  
> db2ee5bdf5c833 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8778  		/* populate checksum, timestamp, VLAN, and protocol */
> db2ee5bdf5c833 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck   2012-09-25  8779  		igb_process_skb_fields(rx_ring, rx_desc, skb);
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://eur03.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.01.org%2Fhyperkitty%2Flist%2Fkbuild-all%40lists.01.org&amp;data=02%7C01%7Csven.auhagen%40voleatech.de%7C3bcb90371c2246b3a93308d819b5e47c%7Cb82a99f679814a7295344d35298f847b%7C0%7C0%7C637287616579607917&amp;sdata=9SZt5bLDXm9ji1t5b6ZbFUdBrNe0TULd48qXAyRHcmU%3D&amp;reserved=0


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
