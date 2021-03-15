Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EECB433A9AC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 03:42:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C8428349A;
	Mon, 15 Mar 2021 02:42:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VglATVka3UuA; Mon, 15 Mar 2021 02:42:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 438508347D;
	Mon, 15 Mar 2021 02:42:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6E4561BF296
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 02:42:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5BDC98347D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 02:42:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jy04jH-4tqEA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 02:42:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from desiato.infradead.org (desiato.infradead.org
 [IPv6:2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 31B2083478
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 02:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=rEfmK87HgUM3vC3FZ5xGyuF/KxJ7ferAtU0I7fgBHZY=; b=lM/OoCEBQYcjwdxhHQb/dJvH9Z
 Gmy2FrdTR6/fX0ZoCIZVcP51+++dOnfHkI+U8G/zPIP3gRx8T/2c1IgJFudXW7EvXEZRNNY+7+52O
 LPJr+iq2PVex+/MCsfDnI2NFKwzXpTCuE6mbJdyIQ7hJOWxb+S7xVy72EIwLORuhzDolfD4DqKhIP
 V6paJWiqJgRInGWPS7CKFNNxbPpMSaOCaO/fWTVn9fMXHuhydfUPoDJi9DCmy2UCT/bct8jWVH1aw
 +lXvfLTsRTjQqDMty8m5SgJz3zyJOcF3BeaJO5ULbGeHpNy+ncq8v+AtifBYIKu1HcNUYfN8nLlrL
 7djt5lKQ==;
Received: from merlin.infradead.org ([2001:8b0:10b:1234::107])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLdBd-00En4N-2x
 for intel-wired-lan@lists.osuosl.org; Mon, 15 Mar 2021 02:42:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=rEfmK87HgUM3vC3FZ5xGyuF/KxJ7ferAtU0I7fgBHZY=; b=1p23JgggqbnsvT4MJOHHtgZyjy
 I6j2ZZ2K2SP434SbaoFutPYOUcgZIR5suLJDDVarpFV+rCw1T+EkSXr1P92Palp0nK9+T02OWPPoq
 y4zzbVy1yLHD5lz1aMeq/ijPvAJHjGKl3txa1EgL4Ok1QptvwzH9t49L2/0Ax8bW+wI8qpZtE9JZ9
 pIPB8toCuxgzDvuN9nh6YgnP4LSvKAS5E4R5+ccbDSrRHv4ZLAUq0fM+LkEyao1B2f+N5Szwsi7Mb
 3PQBOnqbWaOQtwMvJ/NDSQb2Bijp+FnXGJGIaj90Xk1rfFOg0CbImko6xufmR/HZHaXCnLTH2cfPc
 qk3LAdRw==;
Received: from [2601:1c0:6280:3f0::9757]
 by merlin.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lLdAv-001FT1-65; Mon, 15 Mar 2021 02:41:53 +0000
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org,
 ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com, andrii@kernel.org, kafai@fb.com,
 songliubraving@fb.com, yhs@fb.com, kpsingh@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
References: <20210315014847.1021209-1-unixbhaskar@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <d397b00d-ec55-2216-3b69-776d664b4c3d@infradead.org>
Date: Sun, 14 Mar 2021 19:41:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210315014847.1021209-1-unixbhaskar@gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] net: ethernet: intel: igb: Typo fix
 in the file igb_main.c
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

On 3/14/21 6:48 PM, Bhaskar Chowdhury wrote:
> 
> s/structue/structure/
> 
> 
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org>

> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 03f78fdb0dcd..afc8ab9046a5 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -3115,7 +3115,7 @@ static s32 igb_init_i2c(struct igb_adapter *adapter)
>  		return 0;
> 
>  	/* Initialize the i2c bus which is controlled by the registers.
> -	 * This bus will use the i2c_algo_bit structue that implements
> +	 * This bus will use the i2c_algo_bit structure that implements
>  	 * the protocol through toggling of the 4 bits in the register.
>  	 */
>  	adapter->i2c_adap.owner = THIS_MODULE;
> --


-- 
~Randy

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
